import 'package:e_commerce/bloc/all_products/all_products_bloc.dart';
import 'package:e_commerce/bloc/all_products/all_products_event.dart';
import 'package:e_commerce/bloc/all_products/all_products_state.dart';
import 'package:e_commerce/model/product/product.dart';
import 'package:e_commerce/widgets/single_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  void initState() {
    final bloc = BlocProvider.of<AllProductsBloc>(context);
    bloc.add(FetchAllProducts());
    super.initState();
  }

  Widget getBody(List<Product> product) {
    return ListView.builder(
        itemCount: product.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(product: product[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "ShopPannu",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: BlocBuilder<AllProductsBloc, AllProductsState>(
        builder: (context, state) {
          return state.loading
              ? const CircularProgressIndicator()
              : getBody(state.allProduct!);
        },
      ),
    );
  }
}
