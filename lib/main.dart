import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan_android/business/page/test/test_binding.dart';
import 'package:flutter_wan_android/business/page/test/test_page.dart';
import 'package:flutter_wan_android/route/routes.dart';
import 'package:flutter_wan_android/utils/injection.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() async {
  // DoKit.runApp(app: DoKitApp(const MyApp()));
  WidgetsFlutterBinding.ensureInitialized();
  await initSDK();
  runApp(const MyApp());
}

///初始化SDK
Future<void> initSDK() async {
  await Injection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      footerTriggerDistance: 15,
      dragSpeedRatio: 0.91,
      headerBuilder: () => const MaterialClassicHeader(),
      footerBuilder: () => const ClassicFooter(),
      enableLoadingWhenNoData: false,
      enableRefreshVibrate: false,
      enableLoadMoreVibrate: false,
      shouldFooterFollowWhenNotFull: (state) {
        // If you want load more with noMoreData state ,may be you should return false
        return false;
      },
      child: ScreenUtilInit(
          designSize: const Size(750, 1334),
          builder: () => GetMaterialApp(
                getPages: AppRoutes.routerPages,
                title: 'BaseArc',
                theme: ThemeData(
                  primarySwatch: Colors.red,
                ),
                initialBinding: TestBinding(),
                home: TestPage(),
                locale: const Locale('zh'),
              )),
    );
  }
}
