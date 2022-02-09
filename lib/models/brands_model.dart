import 'package:json_annotation/json_annotation.dart';

part 'brands_model.g.dart';

@JsonSerializable()
class Brands {

  String brand;

  Brands({required this.brand});

  factory Brands.fromJson(Map<String , dynamic> json) => _$BrandsFromJson(json);

  Map<String , dynamic> toJson() => _$BrandsToJson(this);

}