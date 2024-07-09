import 'package:e_commerce/bloc/all_products/all_products_event.dart';
import 'package:e_commerce/bloc/all_products/all_products_state.dart';
import 'package:e_commerce/repositories/all_products_repo/all_product_actions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final AllProductActions productActions;
  AllProductsBloc({required this.productActions})
      : super(const AllProductsState()) {
    on<FetchAllProducts>(_fetchProducts);
  }
  Future _fetchProducts(
      FetchAllProducts event, Emitter<AllProductsState> emit) async {
    emit(state.copyWith(loading: true));
    final allProducts = await productActions.fetchAllProducts();
    emit(state.copyWith(allProduct: allProducts, loading: false));
  }
}
