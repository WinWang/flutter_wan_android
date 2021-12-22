import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_wan_android/business/page/listPage/model/article_entity.dart';
import 'package:flutter_wan_android/res/colors.dart';
import 'package:flutter_wan_android/res/style.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeArtItemWidget extends StatelessWidget {
  ArticleEntity itemData;

  HomeArtItemWidget({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Box.hBox20,
                Row(
                  children: [
                    Box.hBox15,
                    Text(itemData.shareUser ??= "",
                        style: TextStyle(
                            fontSize: 22.sp, color: ColorStyle.color_777777)),
                    const Spacer(flex: 1),
                    Text(itemData.niceShareDate ?? "",
                        style: TextStyle(
                            fontSize: 22.sp, color: ColorStyle.color_777777)),
                    Box.hBox15,
                  ],
                ),
                Box.hBox10,
                Text(
                  itemData.title ??= "",
                  style: TextStyle(fontSize: 32.sp, color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Box.hBox10,
                Row(
                  children: [
                    Box.hBox30,
                    Text("${itemData.superChapterName}/${itemData.chapterName}",
                        style: TextStyle(
                            fontSize: 22.sp, color: ColorStyle.color_777777)),
                    const Spacer(flex: 1),
                    Image.asset(
                      "assets/images/icon_collect.png",
                      height: 40.w,
                      width: 40.w,
                    ),
                    Box.hBox15,
                  ],
                ),
                Box.hBox5,
                Divider(height: 2.h, color: ColorStyle.color_d5d5d5)
              ],
            )),
      ),
      onTap: () => {Fluttertoast.showToast(msg: itemData.title ?? "")},
    );
  }
}
