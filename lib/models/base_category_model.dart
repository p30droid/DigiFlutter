

import 'package:digi_android/models/brands_model.dart';
import 'package:digi_android/models/categories_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'base_category_model.g.dart';

@JsonSerializable()
class BaseCategoryModel {


  List<Categories> categories;
  List<Brands> brands;
  BaseCategoryModel({required this.categories, required this.brands});



  factory BaseCategoryModel.fromJson(Map<String , dynamic> json) => _$BaseCategoryModelFromJson(json);

  Map<String , dynamic> toJson() => _$BaseCategoryModelToJson(this);


}