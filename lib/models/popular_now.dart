// To parse this JSON data, do
//
//     final popularNow = popularNowFromJson(jsonString);

import 'dart:convert';

import 'package:star_green_app/utils/date_formatted.dart';

PopularNow popularNowFromJson(String str) =>
    PopularNow.fromJson(json.decode(str));

String popularNowToJson(PopularNow data) => json.encode(data.toJson());

class PopularNow {
  String title;
  String dateFormatted;
  String? image;
  String description;
  String org;

  PopularNow({
    required this.title,
    required this.dateFormatted,
    this.image,
    required this.description,
    required this.org,
  });

  factory PopularNow.fromJson(Map<String, dynamic> json) => PopularNow(
        title: json["title"],
        dateFormatted: formatEpochDate(json["date"]),
        image: json["image"],
        description: json["description"],
        org: json["org"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "date": dateFormatted,
        "image": image,
        "description": description,
        "org": org,
      };
}
