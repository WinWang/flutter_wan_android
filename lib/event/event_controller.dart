import 'package:flutter_wan_android/base/controller/base_controller.dart';
import 'package:get/get.dart';

////负责全局eventBus的controller，实验getx的全局controller通信功能
class EventController extends BaseController {

  RxInt number = 10.obs;

  @override
  void loadNet() {}

  @override
  void onReady() {
    super.onReady();
    showSuccess();
  }

  void sendEvent(int eventNum){
    number.value = eventNum;
  }



}
