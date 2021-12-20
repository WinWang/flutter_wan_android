import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_wan_android/ext/get_extension.dart';
import 'package:flutter_wan_android/http/app_except.dart';
import 'package:flutter_wan_android/http/base_wan_result.dart';
import 'package:flutter_wan_android/mixin/dialog/dialog_mixin.dart';
import 'package:flutter_wan_android/mixin/toast/toast_mixin.dart';
import 'package:flutter_wan_android/utils/log_utils.dart';
import 'package:get/get.dart';

///具有状态控制和网络请求能力的controller，等价MVVM中的ViewModel
abstract class BaseController<M> extends SuperController
    with ToastMixin, DialogMixin {
  late M api;

  @override
  void onInit() {
    super.onInit();
    LogD('>>>>>>>onInit');
  }

  void loadNet();

  /// 发起网络请求，同时处理异常，loading
  httpRequest<T>(Future<T> future, FutureOr<dynamic> Function(T value) onValue,
      {Function(Exception e)? error,
      bool showLoading = true,
      bool handleError = true}) {
    if (showLoading) {
      Get.showLoading();
    }
    future.then((t) {
      ///添加结果码判断（同时考虑加入List的判断逻辑）
      if (t is BaseWanResult) {
        if (t.errorCode == 0) {
          onValue(t);
        } else {
          if (handleError) {
            showToast(t.errorMsg);
            showError(errorMessage: t.errorMsg);
          } else {
            onValue(t);
          }
        }
      } else {
        onValue(t);
      }
    }).catchError((e) {
      if (handleError) {
        showError(e: e);
      }
      if (error != null) {
        error(e);
      }
      showToast(e.toString());
      LogE("网络请求异常====>error:$e");
    }).whenComplete(() {
      if (showLoading) {
        Get.dismiss();
      }
    });
  }

  @override
  void onDetached() {
    LogD('>>>>>>>onDetached');
  }

  @override
  void onInactive() {
    LogD('>>>>>>>onInactive');
  }

  @override
  void onPaused() {
    LogD('>>>>>>>onPaused');
  }

  @override
  void onResumed() {
    LogD('>>>>>>>onResumed');
  }

  @override
  void onReady() {
    super.onReady();
    LogD('>>>>>>>onReady');
    try {
      api = Get.find<M>();
    } catch (e) {}
  }

  @override
  void onClose() {
    super.onClose();
    LogD('>>>>>>>onClose');
  }

  void showSuccess() {
    change(null, status: RxStatus.success());
  }

  void showEmpty() {
    change(null, status: RxStatus.empty());
  }

  void showError({String? errorMessage, Exception? e}) {
    if (e != null) {
      if (e is DioError && e.error is AppException) {
        var error = e.error as AppException;
        change(null, status: RxStatus.error(error.message));
      } else {
        change(null, status: RxStatus.error(errorMessage));
      }
    } else {
      change(null, status: RxStatus.error(errorMessage));
    }
  }

  void showLoading() {
    change(null, status: RxStatus.loading());
  }
}
