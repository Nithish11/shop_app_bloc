// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    ProductEntity(
      productId: (json['id'] as num).toInt(),
      productTitle: json['title'] as String,
      productprice: (json['price'] as num).toDouble(),
      productDescription: json['description'] as String,
      image: json['image'] as String,
      rating: fromJson(json['rating']),
    );

Map<String, dynamic> _$ProductEntityToJson(ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'title': instance.productTitle,
      'price': instance.productprice,
      'description': instance.productDescription,
      'image': instance.image,
      'rating': toRatingJson(instance.rating),
    };
