import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan_android/business/page/test/test_binding.dart';
import 'package:flutter_wan_android/business/page/test/test_page.dart';
import 'package:flutter_wan_android/route/routes.dart';
import 'package:flutter_wan_android/utils/injection.dart';
import 'package:flutter_wan_android/utils/log_utils.dart';
import 'package:get/get.dart';


void main() async {
  // DoKit.runApp(app: DoKitApp(const MyApp()));
  WidgetsFlutterBinding.ensureInitialized();
  await initSDK();
  LogE("初始化》》》");
  runApp(const MyApp());
}

///
Future<void> initSDK() async {
  await Injection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(750, 1334),
        builder: () => GetMaterialApp(
              getPages: AppRoutes.routerPages,
              title: 'BaseArc',
              theme: ThemeData(
                primarySwatch: Colors.red,
              ),
              initialBinding: TestBinding(),
              home: TestPage(),
            ));
  }
}
