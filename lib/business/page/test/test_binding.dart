import 'package:flutter_wan_android/business/page/test/test_page.dart';
import 'package:flutter_wan_android/event/event_controller.dart';
import 'package:get/get.dart';

class TestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventController>(() => EventController());
    Get.lazyPut(() => TestController());
  }
}
