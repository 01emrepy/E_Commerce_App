

import 'package:e_commerce/core/constants/app/app_constant.dart';
import 'package:e_commerce/core/constants/app/icon_constant.dart';

abstract class BaseSingleton {

  AppConstants get constants => AppConstants.instance;
  IconConstants get icons => IconConstants.instance;
}