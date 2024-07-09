import 'package:e_commerce/model/product/product.dart';

abstract class AllProductRepository {
  Future<List<Product>?> fetchAllProducts();
}
