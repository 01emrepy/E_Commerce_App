
import 'package:json_annotation/json_annotation.dart';

part 'StoreModel.g.dart';


@JsonSerializable()
class Store {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Store(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  Factory Store.fromJson(Map<String, dynamic> map) => _$StorefromJson(map);

  Map<String, dynamic> toJson() => _$StoreToJson(this);
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  Factory Rating.fromJson(Map<String, dynamic> json) => _$RatingfromJson(map);

  Map<String, dynamic> toJson() => _$RatingToJson(this);
}