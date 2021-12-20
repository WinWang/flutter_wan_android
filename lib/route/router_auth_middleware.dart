import 'package:flutter/material.dart';
import 'package:flutter_wan_android/route/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

///登陆拦截中间件
class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    Future.delayed(
        const Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));
    return const RouteSettings(name: AppRoutes.TEST_PAGE);
  }
}
