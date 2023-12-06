
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

import '../model/data_model.dart';
import '../navigation/routes.dart';
import '../shared/custom_http_exception.dart';
import '../shared/dio_logger.dart';
import '../shared/pref_manager.dart';
import '../utills/snackbar.util.dart';
import 'api_constants.dart';
class DioClient {
  Dio _dio = Dio();
  DioError? _dioError;
  var apiEndPoints = ApiConstants();
  var tag = 'ApiProvider';
  int count = 0;

  DioClient.base({remoteBaseUrl, deviceToken}) {
    var baseUrl = remoteBaseUrl ?? apiEndPoints.baseUrl;

    BaseOptions dioOptions = BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        // 10 seconds
        receiveTimeout: const Duration(seconds: 10),
        receiveDataWhenStatusError: true,
        followRedirects: false,
        baseUrl: baseUrl);
    _dio = Dio(dioOptions);
    _dio.interceptors.add(QueuedInterceptorsWrapper(onRequest: (RequestOptions options, handler) {
      if (deviceToken != null && deviceToken.toString().isNotEmpty) {
        options.headers = {'Authorization': 'Bearer $deviceToken', 'content-type': 'application/json'};
      } else {
        options.headers = {'content-type': 'application/json'};
      }
      DioLogger.onSend(tag, options);
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      DioLogger.onSuccess(tag, response);
      return handler.next(response);
    }, onError: (DioError error, handler) async {
      _dioError = error;

      return handler.next(error);
    }));
  }

///multipart
  DioClient.multipartBase({remoteBaseUrl, deviceToken}) {
    var baseUrl = remoteBaseUrl ?? apiEndPoints.baseUrl;
    BaseOptions dioOptions = BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        // 10 seconds
        receiveTimeout: const Duration(seconds: 10),
        receiveDataWhenStatusError: true,
        followRedirects: false,
        baseUrl: baseUrl);
    _dio = Dio(dioOptions);
    _dio.interceptors.add(QueuedInterceptorsWrapper(onRequest: (RequestOptions options, handler) {
      DioLogger.onSend(tag, options);
      if (deviceToken != null && deviceToken != '') {
        options.headers = {'Authorization': 'Bearer $deviceToken', 'Content-Type': 'multipart/form-data'};
      } else {
        options.headers = {'Content-Type': 'multipart/form-data'};
      }
      DioLogger.onSend(tag, options);
      return handler.next(options);
    }, onResponse: (Response response, handler) {
      DioLogger.onSuccess(tag, response);
      return handler.next(response);
    }, onError: (DioError error, handler) async {
      _dioError = error;
      return handler.next(error);
    }));
  }




/// calling api function


  Future getProfile() async {
    try {
      Response response = await _dio.get("");
      return DataModel.fromJson(response.data,);
    } catch (error) {
      catchErrorHandler();
    }
    return null;
  }




  /// error handler
 catchErrorHandler() {
    if (_checkSocketException(_dioError!)) {
      throw CustomHttpException('', 200, _dioError!, 'socketError');
    } else if (_dioError!.response!.statusCode == 401) {




    }  else {
      throw CustomHttpException(
          _dioError!.response!.data['message'] ?? '', _dioError!.response!.statusCode, _dioError!, 'error');
    }
  }



bool _checkSocketException(DioError err) {
    return err.type == DioErrorType.unknown && err.error is SocketException;
  }


}
