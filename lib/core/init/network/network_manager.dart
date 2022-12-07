import 'package:e_commerce/core/constants/app/app_constant.dart';

import 'package:dio/dio.dart';


class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = NetworkManager.init();
      return _instance!;
    }
  }

  late final Dio dio;
  AppConstants get constants => AppConstants.instance;

  NetworkManager.init() {
    dio = Dio(
      BaseOptions(baseUrl: constants.servicePath),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          handler.next(options);
        },
      ),
    );
  }
}