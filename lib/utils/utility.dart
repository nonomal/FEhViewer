import 'dart:convert';
import 'dart:io';

import 'package:FEhViewer/common/global.dart';
import 'package:FEhViewer/common/parser/gallery_detail_parser.dart';
import 'package:FEhViewer/common/parser/gallery_list_parser.dart';
import 'package:FEhViewer/models/galleryItem.dart';
import 'package:FEhViewer/models/index.dart';
import 'package:FEhViewer/utils/toast.dart';
import 'package:FEhViewer/values/const.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tuple/tuple.dart';

import 'dio_util.dart';

class EHUtils {
  /// list 分割
  static List<List<T>> splitList<T>(List<T> list, int len) {
    if (len <= 1) {
      return [list];
    }

    final List<List<T>> result = [];
    int index = 1;

    while (true) {
      if (index * len < list.length) {
        final List<T> temp = list.skip((index - 1) * len).take(len).toList();
        result.add(temp);
        index++;
        continue;
      }
      final List<T> temp = list.skip((index - 1) * len).toList();
      result.add(temp);
      break;
    }
    return result;
  }
}

// ignore: avoid_classes_with_only_static_members
class Api {
  //改为使用 PersistCookieJar，在文档中有介绍，PersistCookieJar将cookie保留在文件中，
  // 因此，如果应用程序退出，则cookie始终存在，除非显式调用delete
  static PersistCookieJar _cookieJar;

  static Future<PersistCookieJar> get cookieJar async {
    // print(_cookieJar);
    if (_cookieJar == null) {
      final Directory appDocDir = await getApplicationDocumentsDirectory();
      final String appDocPath = appDocDir.path;
      print('获取的文件系统目录 appDocPath： ' + appDocPath);
      _cookieJar = PersistCookieJar(dir: appDocPath);
    }
    return _cookieJar;
  }

  /// 获取热门画廊列表
  static Future<Tuple2<List<GalleryItem>, int>> getPopular() async {
//    Global.logger.v("获取热门");

    final HttpManager httpManager = HttpManager.getInstance(
        EHConst.getBaseSite(Global.profile.ehConfig.siteEx ?? false));
    const String url = '/popular';

    final String response = await httpManager.get(url);

    final Tuple2<List<GalleryItem>, int> tuple =
        await GalleryListParser.parseGalleryList(response);

    return tuple;
  }

  /// 获取画廊列表
  static Future<Tuple2<List<GalleryItem>, int>> getGallery(
      {int page, String fromGid, String serach, int cats}) async {
    final HttpManager httpManager = HttpManager.getInstance(
        EHConst.getBaseSite(Global.profile.ehConfig.siteEx ?? false));

    String url = '/';
    String qry = '?page=${page ?? 0}';

    if (Global.profile.ehConfig.safeMode) {
      qry = '$qry&f_cats=767';
    } else if (cats != null) {
      qry = '$qry&f_cats=$cats';
    }

    if (fromGid != null) {
      qry = '$qry&from=$fromGid';
    }

    if (Global.profile.ehConfig.safeMode) {
      serach = 'parody:gundam\$';
    }

    if (serach != null) {
      final List<String> searArr = serach.split(':');
      if (searArr.length > 1) {
        String _end = '';
        if (searArr[0] != 'uploader') {
          _end = '\$';
        }
        final String _search =
            Uri.encodeQueryComponent('${searArr[0]}:"${searArr[1]}$_end"');
        qry = '$qry&f_search=$_search';
      }
    }

    url = '$url$qry';

    final Options options = Options(headers: {
      'Referer': 'https://e-hentai.org',
    });

//    Global.logger.v(url);

    final response = await httpManager.get(url, options: options);

    return await GalleryListParser.parseGalleryList(response);
  }

  /// 获取收藏
  static Future<Tuple2<List<GalleryItem>, int>> getFavorite(
      {String favcat, int page}) async {
    final HttpManager httpManager = HttpManager.getInstance(
        EHConst.getBaseSite(Global.profile.ehConfig.siteEx ?? false));

    //收藏时间排序
    final String _order = Global?.profile?.ehConfig?.favoritesOrder;

    String url = '/favorites.php/';
    String qry = '?page=${page ?? 0}';
    if (favcat != null && favcat != 'a' && favcat.isNotEmpty) {
      qry = '$qry&favcat=$favcat';
    }
    qry = "$qry&inline_set=${_order ?? ''}";
    url = '$url$qry';

    Global.logger.v(url);

    final String response = await httpManager.get(url);

    return await GalleryListParser.parseGalleryList(response, isFavorite: true);
  }

  /// 获取画廊详细信息
  static Future<GalleryItem> getGalleryDetail(String inUrl) async {
    //?inline_set=ts_m 小图,40一页
    //?inline_set=ts_l 大图,20一页
    //hc=1#comments 显示全部评论
    //nw=always 不显示警告

    final HttpManager httpManager = HttpManager.getInstance();
//    final String url = inUrl + '?hc=1&inline_set=ts_l&nw=always';
    final String url = inUrl + '?hc=1&nw=always';

    // 不显示警告的处理 cookie加上 nw=1
    // 在 url使用 nw=always 未解决 自动写入cookie 暂时搞不懂 先手动设置下
    // todo 待优化
    final PersistCookieJar cookieJar = await Api.cookieJar;
    final List<Cookie> cookies = cookieJar.loadForRequest(Uri.parse(inUrl));
    cookies.add(Cookie('nw', '1'));
    cookieJar.saveFromResponse(Uri.parse(url), cookies);

//    Global.logger.i("获取画廊 $url");
    final String response = await httpManager.get(url);

    // TODO 画廊警告问题 使用 nw=always 未解决 待处理 怀疑和Session有关
    if ('$response'.contains(r'<strong>Offensive For Everyone</strong>')) {
      Global.logger.v('Offensive For Everyone');
      showToast('Offensive For Everyone');
    }

    final GalleryItem galleryItem =
        await GalleryDetailParser.parseGalleryDetail(response);

    // Global.logger.v(galleryItem.toJson());

    return galleryItem;
  }

  /// 获取画廊缩略图
  /// [inUrl] 画廊的地址
  /// [page] 缩略图页码
  static Future<List<GalleryPreview>> getGalleryPreview(String inUrl,
      {int page}) async {
    //?inline_set=ts_m 小图,40一页
    //?inline_set=ts_l 大图,20一页
    //hc=1#comments 显示全部评论
    //nw=always 不显示警告

    final HttpManager httpManager = HttpManager.getInstance();
    final String url = inUrl + '?p=$page';

    Global.logger.v(url);

    // 不显示警告的处理 cookie加上 nw=1
    // 在 url使用 nw=always 未解决 自动写入cookie 暂时搞不懂 先手动设置下
    // todo 待优化
    final PersistCookieJar cookieJar = await Api.cookieJar;
    final List<Cookie> cookies = cookieJar.loadForRequest(Uri.parse(inUrl));
    cookies.add(Cookie('nw', '1'));
    cookieJar.saveFromResponse(Uri.parse(url), cookies);

    final String response = await httpManager.get(url);

    return GalleryDetailParser.parseGalleryPreviewFromHtml(response);
  }

  /// 由图片url获取解析图库 showkey
  /// [href] 画廊图片展示页面的地址
  static Future<String> getShowkey(String href) async {
    final HttpManager httpManager = HttpManager.getInstance();

    final String url = href;

    final String response = await httpManager.get(url);

    final RegExp regShowKey = RegExp(r'var showkey="([0-9a-z]+)";');

    final String showkey = regShowKey.firstMatch(response)?.group(1) ?? '';

//    Global.logger.v('$showkey');

    return showkey;
  }

  /// 由api获取画廊图片的url
  /// [href] 爬取的页面地址 用来解析gid 和 imgkey
  /// [showKey] api必须
  /// [index] 索引 从 1 开始
  static Future<String> getShowInfo(String href, String showKey,
      {int index}) async {
    HttpManager httpManager = HttpManager.getInstance(EHConst.EH_BASE_URL);
    const String url = '/api.php';

    final String cookie = Global.profile?.user?.cookie ?? '';

    final Options options = Options(headers: {
      'Cookie': cookie,
    });

//    Global.logger.v('href = $href');

    final RegExp regExp =
        RegExp(r'https://e[-x]hentai.org/s/([0-9a-z]+)/(\d+)-(\d+)');
    final RegExpMatch regRult = regExp.firstMatch(href);
    final int gid = int.parse(regRult.group(2));
    final String imgkey = regRult.group(1);
    final int page = int.parse(regRult.group(3));

    final Map<String, Object> reqMap = {
      'method': 'showpage',
      'gid': gid,
      'page': page,
      'imgkey': imgkey,
      'showkey': showKey,
    };
    final String reqJsonStr = jsonEncode(reqMap);

//    Global.logger.v('$reqJsonStr');

    final Response response = await httpManager.postForm(
      url,
      options: options,
      data: reqJsonStr,
    );

//    Global.logger.v('$response');

    final rultJson = jsonDecode('$response');

    final RegExp regImageUrl = RegExp('<img[^>]*src=\"([^\"]+)\" style');
    final imageUrl = regImageUrl.firstMatch(rultJson['i3']).group(1);

//    Global.logger.v('$imageUrl');

    return imageUrl;
  }

  /// 通过api请求获取更多信息
  /// 例如
  /// 画廊评分
  /// 日语标题
  /// 等等
  static Future<List<GalleryItem>> getMoreGalleryInfo(
      List<GalleryItem> galleryItems) async {
    // Global.logger.i('api qry items ${galleryItems.length}');
    if (galleryItems.isEmpty) {
      return galleryItems;
    }

    // 通过api获取画廊详细信息
    List _gidlist = [];

    galleryItems.forEach((GalleryItem galleryItem) {
      _gidlist.add([galleryItem.gid, galleryItem.token]);
    });

    // 25个一组分割
    List _group = EHUtils.splitList(_gidlist, 25);

    List rultList = [];

    // 查询 合并结果
    for (int i = 0; i < _group.length; i++) {
      Map reqMap = {'gidlist': _group[i], 'method': 'gdata'};
      String reqJsonStr = jsonEncode(reqMap);
      final rult = await getGalleryApi(reqJsonStr);

      final jsonObj = jsonDecode(rult.toString());
      final tempList = jsonObj['gmetadata'];
      rultList.addAll(tempList);
    }

    final unescape = HtmlUnescape();

    for (int i = 0; i < galleryItems.length; i++) {
      galleryItems[i].englishTitle = unescape.convert(rultList[i]['title']);
      galleryItems[i].japaneseTitle =
          unescape.convert(rultList[i]['title_jpn']);

      final rating = rultList[i]['rating'];
      galleryItems[i].rating = rating != null
          ? double.parse(rating)
          : galleryItems[i].ratingFallBack;

      final String thumb = rultList[i]['thumb'];
      galleryItems[i].imgUrlL = thumb;
      /*final String imageUrl = thumb.endsWith('-jpg_l.jpg')
          ? thumb.replaceFirst('-jpg_l.jpg', '-jpg_250.jpg')
          : thumb;

      galleryItems[i].imgUrl = imageUrl;*/

      galleryItems[i].filecount = rultList[i]['filecount'];
      galleryItems[i].uploader = rultList[i]['uploader'];
      galleryItems[i].category = rultList[i]['category'];
    }

    return galleryItems;
  }

  static Future<void> getMoreGalleryInfoOne(GalleryItem galleryItem) async {
    final RegExp urlRex = RegExp(r'http?s://e(-|x)hentai.org/g/(\d+)/(\w+)?/$');
    Global.logger.v(galleryItem.url);
    final RegExpMatch urlRult = urlRex.firstMatch(galleryItem.url);
    Global.logger.v(urlRult.groupCount);

    final String gid = urlRult.group(2);
    final String token = urlRult.group(3);

    galleryItem.gid = gid;
    galleryItem.token = token;

    List<GalleryItem> reqGalleryItems = [galleryItem];

    await getMoreGalleryInfo(reqGalleryItems);

    // try {
    //   // todo 正则
    //   final RegExp urlRex =
    //       RegExp(r'http?s://e(-|x)hentai.org/g/(\d+)/(\w+)?/$');
    //   Global.logger.v(galleryItem.url);
    //   final RegExpMatch urlRult = urlRex.firstMatch(galleryItem.url);
    //   Global.logger.v(urlRult.groupNames.toString());
    //
    //   final String gid = urlRult.group(2);
    //   final String token = urlRult.group(3);
    //
    //   galleryItem.gid = gid;
    //   galleryItem.token = token;
    //
    //   List<GalleryItem> reqGalleryItems = [galleryItem];
    //
    //   await getMoreGalleryInfo(reqGalleryItems);
    // } catch (e, stack) {
    //   Global.logger.e('解析数据异常\n' + e.toString() + '\n' + stack.toString());
    //   showToast('解析异常');
    // }
  }

  /// 获取api
  static Future getGalleryApi(String req) async {
    final HttpManager httpManager =
        HttpManager.getInstance(EHConst.EH_BASE_URL);
    const String url = '/api.php';

    final Response response = await httpManager.postForm(url, data: req);

    return response;
  }
}
