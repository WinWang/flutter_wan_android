import 'package:flutter_wan_android/business/page/home/home_binding.dart';
import 'package:flutter_wan_android/business/page/home/home_page.dart';
import 'package:flutter_wan_android/business/page/homeDetail/home_detail.dart';
import 'package:flutter_wan_android/business/page/homeDetail/home_detail_binding.dart';
import 'package:flutter_wan_android/business/page/listPage/list_binding.dart';
import 'package:flutter_wan_android/business/page/listPage/list_page.dart';
import 'package:flutter_wan_android/business/page/main/main_binding.dart';
import 'package:flutter_wan_android/business/page/main/main_page.dart';
import 'package:flutter_wan_android/business/page/test/test_binding.dart';
import 'package:flutter_wan_android/business/page/test/test_page.dart';
import 'package:flutter_wan_android/route/router_auth_middleware.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  static const ARTICLE_PAGE = "/live_page";
  static const HOME_PAGE = "/home_page";
  static const MAIN_PAGE = "/main_page";
  static const HOME_DETAIL_PAGE = "/home_detail_page";
  static const TEST_PAGE = "/test_page";
  static const LIST_PAGE = "/list_page";
  static final routerPages = [
    GetPage(name: HOME_PAGE, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: MAIN_PAGE, page: () => MainPage(), binding: MainBinding()),
    GetPage(name: TEST_PAGE, page: () => TestPage(), binding: TestBinding()),
    GetPage(name: LIST_PAGE, page: () => ListPage(), binding: ListBinding()),
    GetPage(
        name: HOME_DETAIL_PAGE,
        page: () => HomeDetailPage(),
        binding: HomeDetailBindng(),
        transition: Transition.rightToLeft,
        middlewares: [RouteAuthMiddleware(priority: 1)]),
  ];
}
