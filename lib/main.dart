import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan_android/business/page/main/main_binding.dart';
import 'package:flutter_wan_android/business/page/main/main_page.dart';
import 'package:flutter_wan_android/business/page/test/test_binding.dart';
import 'package:flutter_wan_android/business/page/test/test_page.dart';
import 'package:flutter_wan_android/route/routes.dart';
import 'package:get/get.dart';

void main() {
  // DoKit.runApp(app: DoKitApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(750, 1334),
        builder: () => GetMaterialApp(
              getPages: Routes.routerPages,
              title: 'BaseArc',
              theme: ThemeData(
                primarySwatch: Colors.red,
              ),
              initialBinding: TestBinding(),
              home: TestPage(),
            ));
  }
}
