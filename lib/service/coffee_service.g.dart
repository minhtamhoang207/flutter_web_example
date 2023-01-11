// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _CoffeeService implements CoffeeService {
  _CoffeeService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.sampleapis.com/coffee';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Coffee>> getListCoffee({required type}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<Coffee>>(Options(
      method: 'GET',
      headers: <String, dynamic>{},
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/$type',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Coffee.fromJson(i as Map<String, dynamic>))
        .toList();
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
