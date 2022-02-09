

import 'package:digi_android/models/base_category_model.dart';
import 'package:digi_android/models/base_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'rest_client.g.dart';

@RestApi(baseUrl: "https://androidsupport.ir/pack/digiAndroid/")
abstract class RestClient {

  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  
  @GET("home.php")
  Future<BaseModel> getHome();

  @GET('getCategories.php')
  Future<BaseCategoryModel> getCategories();

}