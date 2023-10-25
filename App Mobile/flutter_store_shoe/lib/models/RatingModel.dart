// ignore_for_file: prefer_null_aware_operators, file_names

import 'dart:convert';

class RatingModel {
  RatingModel({
    this.rate = 0,
    this.count = 0,
  });

  double rate;
  int count;

  factory RatingModel.fromRawJson(String str) =>
      RatingModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RatingModel.fromJson(Map<String, dynamic> json) => RatingModel(
        rate: json["rate"] == null ? '' : json["rate"].toDouble(),
        count: json["count"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
