import 'package:json_annotation/json_annotation.dart';
import "gallery_item.dart";
import "favcat.dart";
part 'gallery_list.g.dart';

@JsonSerializable()
class GalleryList {
  GalleryList();

  List<GalleryItem>? gallerys;
  num? maxPage;
  num? nextPage;
  List<Favcat>? favList;
  
  factory GalleryList.fromJson(Map<String,dynamic> json) => _$GalleryListFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryListToJson(this);
}
