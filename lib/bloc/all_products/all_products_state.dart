import 'package:e_commerce/model/product/product.dart';
import 'package:equatable/equatable.dart';

class AllProductsState extends Equatable {
  final List<Product>? allProduct;
  final bool loading;

  const AllProductsState({this.allProduct = const [] , this.loading = false});

  AllProductsState copyWith({List<Product>? allProduct, bool? loading}) {
    return AllProductsState(
        allProduct: allProduct ?? this.allProduct,
        loading: loading ?? this.loading);
  }

  @override
  List<Object?> get props => [allProduct, loading];
}
