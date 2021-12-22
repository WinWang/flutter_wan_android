import 'package:flutter_wan_android/base/controller/base_controller.dart';
import 'package:flutter_wan_android/widget/pull_smart_refresher.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

///带有刷新器的状态控制器
abstract class BaseRefreshController<M> extends BaseController<M> {
  ///加载状态  0加载中 1加载成功 2加载数据为空 3加载失败
  var loadState = 0.obs;

  RefreshController refreshController = RefreshController(initialRefresh: true);

  ///当前页数
  int pageIndex = 1;

  ///是否初次加载
  var isInit = true;

  ///预留上拉刷新
  onLoadRefresh() {
    pageIndex = 1;
    requestPageData(refresh: Refresh.pull);
  }

  ///预留下拉加载
  onLoadMore() {
    ++pageIndex;
    requestPageData(refresh: Refresh.down);
  }

  ///网络请求在此处进行，不用在重复进行上拉下拉的处理
  void requestPageData({Refresh refresh = Refresh.first}) {}

  @override
  void loadNet() {}

  ///刷新控件停止刷新方法
  void hideRefresh(RefreshController refreshController) {
    if (refreshController.isRefresh) {
      refreshController.refreshCompleted();
    } else if (refreshController.isLoading) {
      refreshController.loadComplete();
    }
  }
}
