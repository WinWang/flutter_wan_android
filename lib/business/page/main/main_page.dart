import 'package:flutter/material.dart';
import 'package:flutter_wan_android/base/pageWidget/base_stateless_widget.dart';
import 'package:flutter_wan_android/base/controller/base_controller.dart';
import 'package:flutter_wan_android/business/page/home/home_page.dart';
import 'package:flutter_wan_android/business/page/live/live_page.dart';
import 'package:get/get.dart';

class MainPage extends BaseStatelessWidget<MainController> {
  @override
  Widget buildContent(BuildContext context) {
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: [
              const HomePage(),
              LivePage(),
            ],
          ),
          bottomNavigationBar: _createBottomNaviBar(),
        ));
  }

  Widget _createBottomNaviBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: (event) {
        controller.setCurrentIndex(event);
      },
      currentIndex: controller.currentIndex.value,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('首页'),
          activeIcon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          label: ('直播'),
          activeIcon: Icon(Icons.navigation),
        ),
      ],
    );
  }

  @override
  bool showTitleBar() => false;
}

class MainController extends BaseController {
  var currentIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
    showError();
  }

  void setCurrentIndex(int index) {
    currentIndex.value = index;
  }

  @override
  void loadNet() {
    Future.delayed(const Duration(seconds: 1), () {
      showSuccess();
    });
  }
}
