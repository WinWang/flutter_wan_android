import 'package:flutter_wan_android/widget/dialog/dialog_loading.dart';
import 'package:get/get.dart';

/// @description :get 扩展函数
extension GetExtension on GetInterface {
  ///隐藏dialog
  dismiss() {
    if (Get.isDialogOpen != null && Get.isDialogOpen!) {
      Get.back();
    }
  }

  ///显示dialog
  showLoading({String text = ''}) {
    if (Get.isDialogOpen != null && Get.isDialogOpen!) {
      Get.back();
    }
    Get.dialog(LoadingDialog(text: text.isEmpty ? "加载中" : text),
        transitionDuration: const Duration(milliseconds: 500),
        barrierDismissible: false);
  }
}
