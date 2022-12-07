
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce/core/constants/enums/navigation_enums.dart';
import 'package:e_commerce/features/home/model/home_model.dart';
import 'package:e_commerce/features/home/service/IProductService.dart';
import 'package:e_commerce/features/home/service/product_service_end_points.dart';

class ProductService extends IProductService {
  ProductService(Dio dio) : super(dio);

  @override
  Future<List<HomeModel>> fetchAllProducts() async {
    final response = await dio.get(ProductServiceEndPoints.PRODUCTS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => HomeModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}