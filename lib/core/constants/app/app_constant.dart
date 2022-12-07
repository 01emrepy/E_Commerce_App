class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = AppConstants.init();
      return _instance!;
    }
  }

  AppConstants.init();
  bool get debugShowCheckedModeBanner => false;
  final String servicePath = "https://fakestoreapi.com/";
}