import 'package:flutter/material.dart';
import 'package:flutter_wan_android/base/controller/base_refresh_controller.dart';
import 'package:flutter_wan_android/base/pageWidget/base_stateless_widget.dart';
import 'package:flutter_wan_android/business/page/listPage/model/article_entity.dart';
import 'package:flutter_wan_android/business/page/listPage/widget/home_art_item_widget.dart';
import 'package:flutter_wan_android/http/apiservice/test_api.dart';
import 'package:flutter_wan_android/http/result/base_page_result.dart';
import 'package:flutter_wan_android/http/result/base_wan_result.dart';
import 'package:flutter_wan_android/widget/pull_smart_refresher.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ListPage extends BaseStatelessWidget<ListController> {
  @override
  Widget buildContent(BuildContext context) {
    return Obx(() => SizedBox(
          child: RefreshWidget<ListController>(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return HomeArtItemWidget(
                  itemData: controller.articleList[index]);
            },
            itemCount: controller.articleList.length,
          )),
        ));
  }

  @override
  String titleString() => "文章";
}

class ListController extends BaseRefreshController<TestApi> {
  RxList<ArticleEntity> articleList = <ArticleEntity>[].obs;

  @override
  void onReady() {
    super.onReady();
    loadNet();
  }

  @override
  void loadNet() {
    requestPageData();
  }

  @override
  void requestPageData({Refresh refresh = Refresh.first}) {
    httpRequest<BaseWanResult<BasePageRusult<ArticleEntity>>>(
        api.getHomeArticle(pageIndex), (value) {
      if (refresh == Refresh.first || refresh == Refresh.pull) {
        articleList.clear();
      }
      articleList.addAll(value.data!.datas!);
      // articleList.refresh();
      hideRefresh(refreshController);
    });
  }
}
