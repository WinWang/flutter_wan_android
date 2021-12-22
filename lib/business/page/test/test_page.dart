import 'package:flutter/material.dart';
import 'package:flutter_wan_android/base/controller/base_controller.dart';
import 'package:flutter_wan_android/base/pageWidget/base_stateless_widget.dart';
import 'package:flutter_wan_android/route/routes.dart';
import 'package:flutter_wan_android/utils/preference_utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

////测试Controller持有时间，验证EventBus代替使用全局Controller实现
class TestPage extends BaseStatelessWidget<TestController> {
  @override
  Widget buildContent(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Get.offNamed(AppRoutes.MAIN_PAGE);
        },
        child: const Text("去首页"),
      ),
    );
  }
}

class TestController extends BaseController {
  @override
  void onReady() {
    super.onReady();
    PreferenceUtils.instance.putString("key", "value111111");
    showSuccess();
  }

  @override
  void loadNet() {}
}
