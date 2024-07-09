import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rating_entity.g.dart';



@JsonSerializable(explicitToJson: true)
class RatingEntity extends Equatable{
  @JsonKey(name: 'rate')
  final double rating;

  @JsonKey(name: 'count')
  final int count;

  const RatingEntity({required this.rating,required this.count});
  @override
  List<Object?> get props => [rating,count];
  
  factory RatingEntity.fromJson(Map<String, Object?> json) =>
   _$RatingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RatingEntityToJson(this);
}