import 'package:flutter_wan_android/business/page/listPage/list_page.dart';
import 'package:get/get.dart';

class ListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListController());
  }
}
