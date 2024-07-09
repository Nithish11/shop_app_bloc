import 'dart:convert';

import 'package:e_commerce/entities/product/product_entity.dart';
import 'package:e_commerce/model/product/product.dart';
import 'package:e_commerce/repositories/all_products_repo/all_product_repository.dart';
import 'package:http/http.dart' as http;

class AllProductActions extends AllProductRepository {
  @override
  Future<List<Product>?> fetchAllProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json
          .map<Product>((e) => Product.fromEntity(ProductEntity.fromJson(e)))
          .toList();
    }
    return null;
  }
}
