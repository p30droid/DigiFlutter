// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseCategoryModel _$BaseCategoryModelFromJson(Map<String, dynamic> json) =>
    BaseCategoryModel(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      brands: (json['brands'] as List<dynamic>)
          .map((e) => Brands.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BaseCategoryModelToJson(BaseCategoryModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'brands': instance.brands,
    };
