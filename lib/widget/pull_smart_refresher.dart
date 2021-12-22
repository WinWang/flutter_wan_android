import 'package:flutter/material.dart';
import 'package:flutter_wan_android/base/controller/base_refresh_controller.dart';
import 'package:flutter_wan_android/res/colors.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'behavior/over_scroll_behavior.dart';

///刷新状态
enum Refresh {
  ///初次进入页面加载
  first,

  ///上拉加载
  pull,

  ///下拉加载
  down,
}

class RefreshWidget<Controller extends BaseRefreshController>
    extends GetView<Controller> {
  RefreshWidget({
    Key? key,
    this.enablePullUp = true,
    this.enablePullDown = true,
    this.onRefresh,
    this.onLoadMore,
    required this.child,
  }) : super(key: key);

  ///是否启用上拉
  bool enablePullUp = true;

  ///是否启用下拉
  bool enablePullDown = true;

  ///下拉刷新回调
  VoidCallback? onRefresh;

  ///上拉加载回调
  VoidCallback? onLoadMore;

  ///子类，必须是ListView
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: OverScrollBehavior(),
        child: SmartRefresher(
            controller: controller.refreshController,
            enablePullDown: enablePullDown,
            enablePullUp: enablePullUp,
            onRefresh: () => controller.onLoadRefresh(),
            onLoading: () => controller.onLoadMore(),
            header: const ClassicHeader(
              releaseText: "释放立即刷新",
              refreshingText: "正在刷新...",
              completeText: "刷新完成",
              idleText: "下拉可以刷新",
              textStyle: TextStyle(color: ColorStyle.color_000000),
            ),
            footer: const ClassicFooter(
              loadingText: "正在加载中...",
              idleText: "上拉加载更多",
              canLoadingText: "松手加载更多",
              textStyle: TextStyle(color: ColorStyle.color_000000),
            ),
            child: child));
  }
}
