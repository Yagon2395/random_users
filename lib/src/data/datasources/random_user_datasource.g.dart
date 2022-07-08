// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_user_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RandomUserDatasource implements RandomUserDatasource {
  _RandomUserDatasource(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://randomuser.me/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<RandomUserResponse>> getRandomUsers(results) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'results': results};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<RandomUserResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RandomUserResponse.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
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
