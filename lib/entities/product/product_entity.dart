import 'package:e_commerce/entities/rating/rating_entity.dart';
import 'package:e_commerce/model/rating/rating.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_entity.g.dart';

Rating fromJson(json){
  final RatingEntity ratingEntity = RatingEntity.fromJson(json);
  final Rating rating =  Rating.fromEntity(ratingEntity);
  return rating;
}

  Map<String , dynamic> toRatingJson(Rating rating){
    return rating.toEntity().toJson();
  }



@JsonSerializable(explicitToJson: true)
class ProductEntity extends Equatable {
  @JsonKey(name: 'id')
  final int productId;

  @JsonKey(name: 'title')
  final String productTitle;
  @JsonKey(name: 'price')
  final double productprice;

  @JsonKey(name:'description')
  final String productDescription;

  @JsonKey(name: 'image')
  final String image;

  @JsonKey(name: 'rating', fromJson: fromJson, toJson:toRatingJson )
  final Rating rating;


  const ProductEntity({
    required this.productId,
    required this.productTitle,
    required this.productprice,
    required this.productDescription,
    required this.image,
    required this.rating

  });
  @override
  List<Object?> get props => [productId,productTitle,productDescription,productprice,image];


    factory ProductEntity.fromJson(Map<String, Object?> json) =>
   _$ProductEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductEntityToJson(this);


}
