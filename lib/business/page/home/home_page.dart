import 'package:flutter/material.dart';
import 'package:flutter_wan_android/base/base_controller.dart';
import 'package:flutter_wan_android/base/base_stateless_widget.dart';
import 'package:flutter_wan_android/business/page/home/model/banner_entity.dart';
import 'package:flutter_wan_android/event/event_controller.dart';
import 'package:flutter_wan_android/ext/get_extension.dart';
import 'package:flutter_wan_android/http/apiservice/test_api.dart';
import 'package:flutter_wan_android/route/routes.dart';
import 'package:get/get.dart';

class HomePage extends BaseStatelessWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    return Obx(() => SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Text(controller.homeText.value),
              Text(GetInstance()
                  .find<EventController>()
                  .number
                  .value
                  .toString()),
              ElevatedButton(
                  onPressed: () => controller.setHomeText(),
                  child: const Text("点我改变文案")),
              ElevatedButton(
                  onPressed: () => {Get.toNamed(Routes.HOME_DETAIL_PAGE)},
                  child: const Text("跳转新页面"))
            ],
          ),
        ));
  }
}

class HomeController extends BaseController<TestApi> {
  RxString homeText = "".obs;

  String? dataString = "null";

  void setHomeText() {
    homeText.value = dataString ?? "哈哈哈，我在修改数据，你咬我";
  }

  @override
  void onReady() {
    super.onReady();
    loadNet();
    // Get.showLoading();
  }

  void getBannerData() {
    sendRequest<BannerEntity>(api.getBanner(), (value) {
      homeText.value = value.errorCode?.toString() ?? "123123123";
      showSuccess();
    }, error: (e) {}, showLoading: true);
  }

  @override
  void loadNet() {
    getBannerData();
  }
}
