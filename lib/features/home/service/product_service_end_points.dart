import 'package:e_commerce/core/constants/enums/navigation_enums.dart';

extension ProductServiceExtension on ProductServiceEndPoints {
  String get rawValue {
    switch (this) {
      case ProductServiceEndPoints.PRODUCTS:
        return 'products';
    }
  }
}