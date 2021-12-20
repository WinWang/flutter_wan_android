import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class Styles {
  ///---------------------------黑绿色字体区域-------------------------------
  static TextStyle style_1A2F51_14 =
      TextStyle(color: ColorStyle.color_1A2F51, fontSize: 14.sp);
  static TextStyle style_1A2F51_16 =
      TextStyle(color: ColorStyle.color_1A2F51, fontSize: 16.sp);
  static TextStyle style_1A2F51_18 =
      TextStyle(color: ColorStyle.color_1A2F51, fontSize: 18.sp);

  ///---------------------------淡灰色字体区域-------------------------------
  static TextStyle style_B8C0D4_11 =
      TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 11.sp);
  static TextStyle style_B8C0D4_13 =
      TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 13.sp);
  static TextStyle style_B8C0D4_14 =
      TextStyle(color: ColorStyle.color_B8C0D4, fontSize: 14.sp);

  ///---------------------------浅灰色字体区域-------------------------------
  static TextStyle style_9F9EA6_11 =
      TextStyle(color: Color(0xff9F9EA6), fontSize: 11.sp, height: 1.1.sh);
  static TextStyle style_9F9EA6_14 =
      TextStyle(color: Color(0xff9F9EA6), fontSize: 14.sp, height: 1.1.sh);
  static TextStyle style_616169_11 =
      TextStyle(color: Color(0xff616169), fontSize: 11.sp, height: 1.1.sh);
  static TextStyle style_6A6969_14 =
      TextStyle(color: ColorStyle.color_6A6969, fontSize: 14.sp);
  static TextStyle style_6A6969_16 =
      TextStyle(color: ColorStyle.color_6A6969, fontSize: 16.sp);
  static TextStyle style_6A6969_28 =
  TextStyle(color: ColorStyle.color_6A6969, fontSize: 28.sp);

  ///---------------------------白色字体区域-------------------------------
  static TextStyle style_white_10 =
      TextStyle(color: Colors.white, fontSize: 10.sp, height: 1.1.sh);
  static TextStyle style_white_12 =
      TextStyle(color: Colors.white, fontSize: 12.sp);
  static TextStyle style_white_14 =
      TextStyle(color: Colors.white, fontSize: 14.sp);
  static TextStyle style_white_16 =
      TextStyle(color: Colors.white, fontSize: 16.sp);
  static TextStyle style_white_22 =
      TextStyle(color: Colors.white, fontSize: 22.sp);
  static TextStyle style_white_24 =
      TextStyle(color: Colors.white, fontSize: 24.sp);
  static TextStyle style_white_18 =
      TextStyle(color: Colors.white, fontSize: 18.sp);
  static TextStyle style_white_16_bold = TextStyle(
      color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w700);
  static TextStyle style_white24_18 =
      TextStyle(color: Colors.white24, fontSize: 18.sp);
  static TextStyle style_white_36 =
      TextStyle(color: Colors.white, fontSize: 36.sp);

  ///---------------------------黑色字体区域-------------------------------
  static TextStyle style_black_18_bold = TextStyle(
      color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w700);
  static TextStyle style_black_18_bold500 = TextStyle(
      color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w500);
  static TextStyle style_black_24_bold500 = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w500);
  static TextStyle style_black_30_bold500 = TextStyle(
      color: Colors.black, fontSize: 30.sp, fontWeight: FontWeight.w500);
  static TextStyle style_black_16_bold = TextStyle(
      color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w700);
  static TextStyle style_black_16_bold500 = TextStyle(
      color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle style_black_14 =
      TextStyle(color: Colors.black, fontSize: 14.sp);
  static TextStyle style_black_16 =
      TextStyle(color: Colors.black, fontSize: 16.sp);
  static TextStyle style_black_24 =
      TextStyle(color: Colors.black, fontSize: 24.sp);
  static TextStyle style_black_32 =
      TextStyle(color: Colors.black, fontSize: 32.sp);
  static TextStyle style_black_36 =
      TextStyle(color: Colors.black, fontSize: 36.sp);
  static TextStyle style_black_30 =
      TextStyle(color: Colors.black, fontSize: 30.sp);
  static TextStyle style_black_12 =
      TextStyle(color: Colors.black, fontSize: 12.sp);
  static TextStyle style_black_13 =
      TextStyle(color: Colors.black, fontSize: 13.sp);
  static TextStyle style_black_15 =
      TextStyle(color: Colors.black, fontSize: 15.sp);

  static const TextStyle style_24CF5F_14 =
      TextStyle(color: ColorStyle.color_24CF5F, fontSize: 14);

  ///---------------------------黄色、淡黄色字体区域-------------------------------
  static TextStyle style_FE8C28_24_bold = TextStyle(
      color: ColorStyle.color_FE8C28,
      fontSize: 24.sp,
      fontWeight: FontWeight.w700);

  static TextStyle style_FFAE2E_14 =
      TextStyle(color: ColorStyle.color_FFAE2E, fontSize: 14.sp);

  static TextStyle style_FFAE2E_16 =
      TextStyle(color: ColorStyle.color_FFAE2E, fontSize: 16.sp);

  static TextStyle style_FE8C28_11 = TextStyle(
      color: ColorStyle.color_FE8C28, fontSize: 11.sp, height: 1.1.sh);
}

/// 间隔
class Box {
  /// 水平间隔
  static Widget wBox3 = SizedBox(width: 3.w);
  static Widget wBox5 = SizedBox(width: 5.w);
  static Widget wBox6 = SizedBox(width: 6.w);
  static Widget wBox10 = SizedBox(width: 10.w);
  static Widget wBox12 = SizedBox(width: 12.w);
  static Widget wBox15 = SizedBox(width: 15.w);
  static Widget wBox20 = SizedBox(width: 20.w);
  static Widget wBox30 = SizedBox(width: 30.w);

  /// 垂直间隔
  static Widget hBox3 = SizedBox(height: 3.h);
  static Widget hBox5 = SizedBox(height: 5.h);
  static Widget hBox10 = SizedBox(height: 10.h);
  static Widget hBox12 = SizedBox(height: 12.h);
  static Widget hBox15 = SizedBox(height: 15.h);
  static Widget hBox20 = SizedBox(height: 20.h);
  static Widget hBox30 = SizedBox(height: 30.h);
  static Widget hBox50 = SizedBox(height: 50.h);

  static Widget getHGap(double w) {
    return SizedBox(width: w);
  }

  static Widget getVGap(double h) {
    return SizedBox(height: h);
  }
}

class DividerStyle {
  ///分割线 0.5 - 20边距
  static Widget divider1HalfPadding20 = Divider(
    height: 0.5.h,
    thickness: 0.5,
    indent: 20,
    endIndent: 20,
    color: ColorStyle.colorShadow,
  );

  ///分割线 0.5 - 无边距
  static Widget divider1Half = Divider(
    height: 0.5.h,
    thickness: 0.5,
    color: ColorStyle.colorShadow,
  );

  ///分割线 20 - 无边距
  static Widget divider20Half = const Divider(
    height: 20,
    thickness: 20,
    color: ColorStyle.color_F8F9FC,
  );
}
