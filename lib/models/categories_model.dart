

import 'package:json_annotation/json_annotation.dart';

part 'categories_model.g.dart';

@JsonSerializable()
class Categories {

  String id;
  String title;
  String description;
  String icon;

  Categories({required this.id,  required this.title, required
  this.description, required this.icon});


  factory Categories.fromJson(Map<String , dynamic> json) => _$CategoriesFromJson(json);

  Map<String , dynamic> toJson() => _$CategoriesToJson(this);


}