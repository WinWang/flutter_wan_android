import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan_android/base/base_controller.dart';
import 'package:flutter_wan_android/mixin/toast/toast_mixin.dart';
import 'package:flutter_wan_android/res/colors.dart';
import 'package:flutter_wan_android/res/style.dart';
import 'package:flutter_wan_android/widget/loading_widget.dart';
import 'package:get/get.dart';

abstract class BaseStatelessWidget<T extends BaseController> extends GetView<T>
    with ToastMixin {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showTitleBar() ? createAppBar() : null,
      body: controller.obx((state) => buildContent(context),
          onLoading: Center(
            child: LoadingWidget(),
          ),
          onError: (error) => _createErroWidget(error),
          onEmpty: _createEmptyWidget()),
      drawer: showDrawer() ? createDrawer() : null,
    );
  }

  Widget createDrawer() {
    return Container();
  }

  bool showTitleBar() => true;

  bool showDrawer() => false;

  String titleString() => "标题";

  ////showSuccess展示成功的布局
  Widget buildContent(BuildContext context);

  ////空布局
  Widget _createEmptyWidget() {
    return Material(
      child: Center(
          widthFactor: double.infinity,
          child: InkWell(
            onTap: () {
              controller.showLoading();
              controller.loadNet();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/common_empty_img.png",
                  height: 320.h,
                  width: 320.w,
                ),
                Box.hBox30,
                Text(
                  "暂无数据",
                  style: TextStyle(
                      fontSize: 32.sp, color: ColorStyle.color_999999),
                ),
                Box.hBox20,
                Text(
                  "点我重试",
                  style: TextStyle(
                      fontSize: 25.sp, color: ColorStyle.color_999999),
                )
              ],
            ),
          )),
    );
  }

  ////创建AppBar
  AppBar createAppBar() {
    return AppBar(
      title: Text(titleString()),
      centerTitle: true,
    );
  }

  ////异常布局
  Widget _createErroWidget(String? error) {
    return Material(
        child: Center(
            widthFactor: double.infinity,
            child: InkWell(
              onTap: () {
                controller.showLoading();
                controller.loadNet();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/common_empty_img.png",
                    height: 320.h,
                    width: 320.w,
                  ),
                  Box.wBox30,
                  Text(
                    error ?? "页面加载异常",
                    style: TextStyle(
                        fontSize: 32.sp, color: ColorStyle.color_999999),
                  ),
                  Box.hBox20,
                  Text(
                    "点我重试",
                    style: TextStyle(
                        fontSize: 25.sp, color: ColorStyle.color_999999),
                  )
                ],
              ),
            )));
  }
}
