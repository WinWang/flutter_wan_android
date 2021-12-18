import 'package:flutter_wan_android/business/page/homeDetail/home_detail.dart';
import 'package:get/get.dart';

class HomeDetailBindng extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeDetailController());
  }
}
