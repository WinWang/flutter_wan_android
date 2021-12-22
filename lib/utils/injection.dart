import 'package:flutter_wan_android/http/apiservice/test_api.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

///初始化注入对象
class Injection {
  static Future<void> init() async {
    await Get.putAsync(() => SharedPreferences.getInstance());
    Get.lazyPut(() => TestApi());
  }
}
