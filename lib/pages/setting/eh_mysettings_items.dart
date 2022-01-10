part of 'eh_mysettings_page.dart';

final _controller = Get.find<EhMySettingsController>();

Widget _buildSelectedProfileItem(BuildContext context,
    {bool hideLine = false}) {
  return Obx(() {
    final Map<String, String> actionMap = <String, String>{};
    for (final _profile in _controller.ehSetting.profilelist) {
      actionMap['${_profile.value}'] = _profile.name;
    }
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_selected,
      actionTitle: 'Selected Profile',
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.profileSelected ?? '',
      onValueChanged: (val) {
        print(val);
        if (val != _controller.ehSetting.profileSelected) {
          _controller.changeProfile(val);
        }
      },
    );
  });
}

Widget _buildLoadTypeItem(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_uh_0,
    '1': L10n.of(context).uc_uh_1,
    '2': L10n.of(context).uc_uh_2,
  };

  final Map<String, String> simpleActionMap = <String, String>{
    '0': L10n.of(context).uc_uh_0_s,
    '1': L10n.of(context).uc_uh_1_s,
    '2': L10n.of(context).uc_uh_2_s,
  };
  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_thor_hath,
      hideLine: hideLine,
      actionMap: actionMap,
      simpleActionMap: simpleActionMap,
      initVal: _controller.ehSetting.loadImageThroughHAtH ?? '',
      onValueChanged: (val) => _controller.ehSetting.loadImageThroughHAtH = val,
    );
  });
}

Widget _buildImageSizeItem(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_auto,
    '5': '2400x',
    '4': '1600x',
    '3': '1280x',
    '2': '980x',
    '1': '780x',
  };
  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_res_res,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.imageSize ?? '',
      onValueChanged: (val) => _controller.ehSetting.imageSize = val,
    );
  });
}

Widget _buildNameDisplayItem(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_tl_0,
    '1': L10n.of(context).uc_tl_1,
  };
  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_name_display,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.galleryNameDisplay ?? '',
      onValueChanged: (val) => _controller.ehSetting.galleryNameDisplay = val,
    );
  });
}

Widget _buildArchiverSettingsItem(BuildContext context,
    {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_ar_0,
    '1': L10n.of(context).uc_ar_1,
    '2': L10n.of(context).uc_ar_2,
    '3': L10n.of(context).uc_ar_3,
    '4': L10n.of(context).uc_ar_4,
    '5': L10n.of(context).uc_ar_5,
  };
  final Map<String, String> sActionMap = <String, String>{
    '0': 'MM (Default)',
    '1': 'MA',
    '2': 'AOM',
    '3': 'AOA',
    '4': 'ARM',
    '5': 'ARA',
  };
  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_archiver_set,
      hideLine: hideLine,
      actionMap: actionMap,
      // simpleActionMap: sActionMap,
      initVal: _controller.ehSetting.archiverSettings ?? '',
      onValueChanged: (val) => _controller.ehSetting.archiverSettings = val,
    );
  });
}

Widget _buildFrontPageSettingsItem(BuildContext context,
    {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '3': L10n.of(context).uc_dm_3,
    '4': L10n.of(context).uc_dm_4,
    '0': L10n.of(context).uc_dm_0,
    '2': L10n.of(context).uc_dm_2,
    '1': L10n.of(context).uc_dm_1,
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_front_page_dis_mode,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.frontPageSettings ?? '',
      onValueChanged: (val) => _controller.ehSetting.frontPageSettings = val,
    );
  });
}

Widget _buildFavoritesSortItem(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_fs_0,
    '1': L10n.of(context).uc_fs_1,
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_fav_sort,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.frontPageSettings ?? '',
      onValueChanged: (val) => _controller.ehSetting.frontPageSettings = val,
    );
  });
}

Widget _buildSearchResultCountItem(BuildContext context,
    {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': '25',
    '1': '50',
    '2': '100',
    '3': '200',
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_search_r_count,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.searchResultCount ?? '',
      onValueChanged: (val) => _controller.ehSetting.searchResultCount = val,
    );
  });
}

Widget _buildThumbMouseOverItem(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_lt_0,
    '1': L10n.of(context).uc_lt_1,
  };

  final Map<String, String> sActionMap = <String, String>{
    '0': L10n.of(context).uc_lt_0_s,
    '1': L10n.of(context).uc_lt_1_s,
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_mose_over_thumb,
      hideLine: hideLine,
      actionMap: actionMap,
      simpleActionMap: sActionMap,
      initVal: _controller.ehSetting.mouseOverThumbnails ?? '',
      onValueChanged: (val) => _controller.ehSetting.mouseOverThumbnails = val,
    );
  });
}

Widget _buildThumbSizeItem(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_ts_0,
    '1': L10n.of(context).uc_ts_1,
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_thumb_size,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.thumbnailSize ?? '',
      onValueChanged: (val) => _controller.ehSetting.thumbnailSize = val,
    );
  });
}

Widget _buildThumbRowItem(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': '4',
    '1': '10',
    '2': '20',
    '3': '40',
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_thumb_row,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.thumbnailRows ?? '',
      onValueChanged: (val) => _controller.ehSetting.thumbnailRows = val,
    );
  });
}

Widget _buildSortOrderComment(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_cs_0,
    '1': L10n.of(context).uc_cs_1,
    '2': L10n.of(context).uc_cs_2,
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_comments_sort_order,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.sortOrderComments ?? '',
      onValueChanged: (val) => _controller.ehSetting.sortOrderComments = val,
    );
  });
}

Widget _buildShowCommentVotes(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_sc_0,
    '1': L10n.of(context).uc_sc_1,
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_comments_show_votes,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.showCommentVotes ?? '',
      onValueChanged: (val) => _controller.ehSetting.showCommentVotes = val,
    );
  });
}

Widget _buildSortOrderTags(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_tb_0,
    '1': L10n.of(context).uc_tb_1,
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_tag_short_order,
      hideLine: hideLine,
      actionMap: actionMap,
      initVal: _controller.ehSetting.sortOrderTags ?? '',
      onValueChanged: (val) => _controller.ehSetting.sortOrderTags = val,
    );
  });
}

Widget _buildShowPageNumbers(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_pn_0,
    '1': L10n.of(context).uc_pn_1,
  };

  return TextSwitchItem(
    L10n.of(context).uc_show_page_num,
    hideLine: hideLine,
    intValue: _controller.ehSetting.showGalleryPageNumbers == '0',
    onChanged: (val) =>
        _controller.ehSetting.showGalleryPageNumbers = val ? '0' : '1',
  );
}

Widget _buildOriginalImages(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_oi_0,
    '1': L10n.of(context).uc_oi_1,
  };

  return Obx(
    () {
      return TextSwitchItem(
        L10n.of(context).uc_ori_image,
        hideLine: true,
        intValue: _controller.ehSetting.originalImages == '1',
        onChanged: (val) =>
            _controller.ehSetting.originalImages = val ? '1' : '0',
      );
    },
  );
}

Widget _buildMPVAlwaysUse(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_qb_0,
    '1': L10n.of(context).uc_qb_1,
  };

  return Obx(
    () {
      return TextSwitchItem(
        L10n.of(context).uc_mpv_always,
        key: UniqueKey(),
        intValue: _controller.ehSetting.alwaysUseMpv == '1',
        onChanged: (val) =>
            _controller.ehSetting.alwaysUseMpv = val ? '1' : '0',
      );
    },
  );
}

Widget _buildMPVDisplayStyle(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_ms_0,
    '1': L10n.of(context).uc_ms_1,
    '2': L10n.of(context).uc_ms_2,
  };

  final Map<String, String> sActionMap = <String, String>{
    '0': 'Align left',
    '1': 'Align center 1',
    '2': 'Align center 2',
  };

  return Obx(() {
    return SelectorItem<String>(
      key: UniqueKey(),
      title: L10n.of(context).uc_mpv_stype,
      actionTitle: 'Multi-Page Viewer Display Style',
      hideLine: hideLine,
      actionMap: actionMap,
      // simpleActionMap: sActionMap,
      initVal: _controller.ehSetting.mpvStyle ?? '',
      onValueChanged: (val) => _controller.ehSetting.mpvStyle = val,
    );
  });
}

Widget _buildMPVThumbPane(BuildContext context, {bool hideLine = false}) {
  final Map<String, String> actionMap = <String, String>{
    '0': L10n.of(context).uc_mt_0,
    '1': L10n.of(context).uc_mt_1,
  };

  return Obx(
    () {
      return TextSwitchItem(
        L10n.of(context).uc_mpv_thumb_pane,
        key: UniqueKey(),
        intValue: _controller.ehSetting.mpvThumbnailPane == '0',
        onChanged: (val) =>
            _controller.ehSetting.mpvThumbnailPane = val ? '0' : '1',
      );
    },
  );
}

Widget _buildRatingsItem(BuildContext context, {bool hideLine = false}) {
  return Obx(() {
    return TextInputItem(
      title: L10n.of(context).uc_rating,
      placeholder: 'RRGGB',
      hideLine: hideLine,
      initValue: _controller.ehSetting.ratings ?? '',
      onChanged: (val) => _controller.ehSetting.ratings = val,
    );
  });
}

Widget _buildTagFilteringThreshold(BuildContext context) {
  return Obx(() {
    return TextInputItem(
      title: L10n.of(context).uc_tag_ft,
      hideLine: true,
      initValue: _controller.ehSetting.tagFilteringThreshold ?? '',
      onChanged: (val) => _controller.ehSetting.tagFilteringThreshold = val,
    );
  });
}

Widget _buildTagWatchingThreshold(BuildContext context) {
  return Obx(() {
    return TextInputItem(
      title: L10n.of(context).uc_tag_wt,
      hideLine: true,
      initValue: _controller.ehSetting.tagWatchingThreshold ?? '',
      onChanged: (val) => _controller.ehSetting.tagWatchingThreshold = val,
    );
  });
}

Widget _buildExcludedUploaders(BuildContext context) {
  return Obx(() {
    return SingleInputItem(
      title: L10n.of(context).uc_exc_up,
      hideLine: true,
      maxLines: _controller.ehSetting.xuQuotaMax as int?,
      selector:
          '${_controller.ehSetting.excludedUploaders?.trim().split('\n').length ?? 0}'
          '/${_controller.ehSetting.xuQuotaMax}',
      initValue: _controller.ehSetting.excludedUploaders ?? '',
      onChanged: (val) => _controller.ehSetting.excludedUploaders = val,
    );
  });
}

Widget _buildThumbnailScaling(BuildContext context) {
  // Thumbnail Scaling
  return Obx(() {
    return TextInputItem(
      title: L10n.of(context).uc_thumb_scaling,
      suffixText: '%',
      placeholder: '100',
      hideLine: true,
      initValue: _controller.ehSetting.thumbnailScaling ?? '',
      onChanged: (val) => _controller.ehSetting.thumbnailScaling = val,
    );
  });
}

Widget _buildViewportOverride(BuildContext context) {
  // Thumbnail Scaling
  return Obx(() {
    return TextInputItem(
      title: L10n.of(context).uc_viewport_or,
      suffixText: 'px',
      hideLine: true,
      initValue: _controller.ehSetting.viewportOverride ?? '',
      onChanged: (val) => _controller.ehSetting.viewportOverride = val,
    );
  });
}

Widget _buildHatHLocalNetworkHost(BuildContext context) {
  // Hentai@Home Local Network Host
  return Obx(() {
    return TextInputItem(
      title: 'IP Address:Port',
      hideLine: true,
      initValue: _controller.ehSetting.hentaiAtHomeLocalNetworkHost ?? '',
      onChanged: (val) =>
          _controller.ehSetting.hentaiAtHomeLocalNetworkHost = val,
    );
  });
}

Widget _buildSizeHorizontal(BuildContext context) {
  return Obx(() {
    return TextInputItem(
      title: L10n.of(context).uc_img_horiz,
      suffixText: L10n.of(context).uc_pixels,
      hideLine: false,
      initValue: _controller.ehSetting.imageSizeHorizontal ?? '',
      onChanged: (val) => _controller.ehSetting.imageSizeHorizontal = val,
    );
  });
}

Widget _buildSizeVertical(BuildContext context) {
  return Obx(() {
    return TextInputItem(
      title: L10n.of(context).uc_img_vert,
      suffixText: L10n.of(context).uc_pixels,
      hideLine: true,
      initValue: _controller.ehSetting.imageSizeVertical ?? '',
      onChanged: (val) => _controller.ehSetting.imageSizeVertical = val,
    );
  });
}

Widget _buildTagNamespaces(BuildContext context) {
  return Obx(() {
    final xnItemMap = _controller.ehSetting.xnItemMap;
    final _sMap = xnItemMap.map(
      (key, value) => MapEntry(
        key,
        SingleSelectItemBean(
            title: L10n.of(context).tagNamespace(key),
            enable: value.value == '1'),
      ),
    );

    return MultiSelectorGroup(
      key: UniqueKey(),
      selectorMap: _sMap,
      onValueChanged: (val) {
        logger.d('$val');
        for (final entry in val.entries) {
          _controller.ehSetting
              .setXnItem(entry.key, (entry.value.enable ?? false) ? '1' : '');
        }
      },
    );
  });
}
