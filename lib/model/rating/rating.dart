import 'package:e_commerce/entities/rating/rating_entity.dart';
import 'package:equatable/equatable.dart';

class Rating extends Equatable {
  final double rating;
  final int count;

  const Rating({required this.count, required this.rating});

  static Rating fromEntity(RatingEntity ratingEntity) {
    return Rating(count: ratingEntity.count, rating: ratingEntity.rating);
  }

  RatingEntity toEntity() {
    return RatingEntity(rating: rating, count: count);
  }

  @override
  List<Object?> get props => [count, rating];
}
