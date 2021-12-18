import 'package:dio/dio.dart';
import 'package:flutter_wan_android/business/page/home/model/banner_entity.dart';
import 'package:flutter_wan_android/constant/http_url.dart';
import 'package:flutter_wan_android/http/dio_client.dart';
import 'package:retrofit/http.dart';

part 'test_api.g.dart';

@RestApi(baseUrl: HttpUrl.WANANDROID_URL)
abstract class TestApi {
  factory TestApi({Dio? dio, String? baseUrl}) {
    dio ??= DioClient().dio;
    return _TestApi(dio, baseUrl: baseUrl);
  }

  @GET("banner/json")
  Future<BannerEntity> getBanner();
}
