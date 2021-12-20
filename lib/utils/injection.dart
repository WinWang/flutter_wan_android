import 'package:flutter_wan_android/http/apiservice/test_api.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'log_utils.dart';

///初始化注入对象
class Injection {
  static Future<void> init() async {
    await Get.putAsync(() => SharedPreferences.getInstance());
    LogE("初始化》》》11111");
    Get.lazyPut(() => TestApi());
  }
}
