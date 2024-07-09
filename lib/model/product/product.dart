import 'package:e_commerce/entities/product/product_entity.dart';
import 'package:e_commerce/model/rating/rating.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int productId;
  final String productTitle;
  final double productprice;
  final String productDescription;
  final String image;
  final Rating rating;

  const Product(
      {required this.image,
      required this.productDescription,
      required this.productId,
      required this.productprice,
      required this.productTitle,
      required this.rating});

  static Product fromEntity(ProductEntity productEntity) {
    return Product(
        image: productEntity.image,
        productDescription: productEntity.productDescription,
        productId: productEntity.productId,
        productprice: productEntity.productprice,
        productTitle: productEntity.productTitle,
        rating: productEntity.rating);
  }

  ProductEntity toEntity(){
    return ProductEntity(productId: productId, productTitle: productTitle, productprice: productprice, productDescription: productDescription, image: image, rating: rating);
  }

  @override
  List<Object?> get props =>
      [productId, productTitle, productDescription, productprice, image];
}
