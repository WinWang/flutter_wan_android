import 'package:flutter/material.dart';
import 'package:flutter_wan_android/base/controller/base_controller.dart';
import 'package:flutter_wan_android/base/pageWidget/base_stateless_widget.dart';
import 'package:flutter_wan_android/event/event_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/get_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeDetailPage extends BaseStatelessWidget<HomeDetailController> {
  // EventController get eventController => GetInstance().find<EventController>();

  @override
  Widget buildContent(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          GetInstance().find<EventController>().sendEvent(300);
        },
        child: Text(controller.datavalue.value),
      ),
    );
  }
}

class HomeDetailController extends BaseController {
  RxString datavalue = "发送实践".obs;

  @override
  void onReady() {
    super.onReady();
    var arguments = Get.arguments;
    datavalue.value = arguments;
    showSuccess();
  }

  @override
  void loadNet() {}
}
