import 'package:flutter_wan_android/business/page/home/home_page.dart';
import 'package:flutter_wan_android/business/page/main/main_page.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MainController());
  }
}
