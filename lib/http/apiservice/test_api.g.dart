// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TestApi implements TestApi {
  _TestApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://www.wanandroid.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BannerEntity> getBanner() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BannerEntity>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'banner/json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BannerEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BaseWanResult<List<HotData>>> getHotData() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseWanResult<List<HotData>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/hotkey/json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseWanResult<List<HotData>>.fromJson(
        _result.data!,
        (json) => (json as List<dynamic>)
            .map<HotData>((i) => HotData.fromJson(i as Map<String, dynamic>))
            .toList());
    return value;
  }

  @override
  Future<BaseWanResult<BasePageRusult<ArticleEntity>>> getHomeArticle(
      pageNum) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseWanResult<BasePageRusult<ArticleEntity>>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/article/list/${pageNum}/json',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseWanResult<BasePageRusult<ArticleEntity>>.fromJson(
      _result.data!,
      (json) => BasePageRusult<ArticleEntity>.fromJson(
        json as Map<String, dynamic>,
        (json) => ArticleEntity.fromJson(json as Map<String, dynamic>),
      ),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
