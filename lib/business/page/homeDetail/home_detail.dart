import 'package:flutter/material.dart';
import 'package:flutter_wan_android/base/base_controller.dart';
import 'package:flutter_wan_android/base/base_stateless_widget.dart';
import 'package:flutter_wan_android/event/event_controller.dart';
import 'package:get/get_instance/src/get_instance.dart';

class HomeDetailPage extends BaseStatelessWidget<HomeDetailController> {

  // EventController get eventController => GetInstance().find<EventController>();

  @override
  Widget buildContent(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          GetInstance().find<EventController>().sendEvent(300);
        },
        child: Text("发送实践"),
      ),
    );
  }
}

class HomeDetailController extends BaseController {

  @override
  void onReady() {
    super.onReady();
    showSuccess();
  }

  @override
  void loadNet() {}
}
