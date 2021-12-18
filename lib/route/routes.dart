import 'package:flutter_wan_android/business/page/home/home_binding.dart';
import 'package:flutter_wan_android/business/page/home/home_page.dart';
import 'package:flutter_wan_android/business/page/homeDetail/home_detail.dart';
import 'package:flutter_wan_android/business/page/homeDetail/home_detail_binding.dart';
import 'package:flutter_wan_android/business/page/main/main_binding.dart';
import 'package:flutter_wan_android/business/page/main/main_page.dart';
import 'package:flutter_wan_android/business/page/test/test_binding.dart';
import 'package:flutter_wan_android/business/page/test/test_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class Routes {
  static const ARTICLE_PAGE = "/live_page";
  static const HOME_PAGE = "/home_page";
  static const MAIN_PAGE = "/main_page";
  static const HOME_DETAIL_PAGE = "/home_detail_page";
  static const TEST_PAGE = "/test_page";
  static final routerPages = [
    GetPage(name: HOME_PAGE, page: () => HomePage(), binding: HomeBinding()),
    GetPage(name: MAIN_PAGE, page: () => MainPage(), binding: MainBinding()),
    GetPage(name: TEST_PAGE, page: () => TestPage(), binding: TestBinding()),
    GetPage(
        name: HOME_DETAIL_PAGE,
        page: () => HomeDetailPage(),
        binding: HomeDetailBindng())
  ];
}
