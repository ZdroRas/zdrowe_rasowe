// To parse this JSON data, do
//
//     final dogsBreeding = dogsBreedingFromJson(jsonString);

import 'dart:convert';

DogsBreeding dogsBreedingFromJson(String str) => DogsBreeding.fromJson(json.decode(str));

String dogsBreedingToJson(DogsBreeding data) => json.encode(data.toJson());

class DogsBreeding {
  List<Item> items;

  DogsBreeding({
    required this.items,
  });

  factory DogsBreeding.fromJson(Map<String, dynamic> json) => DogsBreeding(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  String id;
  String nickname;
  String name;
  bool isPromoted;
  String email;
  String countryName;
  String voivodeshipName;

  Item({
    required this.id,
    required this.nickname,
    required this.name,
    required this.isPromoted,
    required this.email,
    required this.countryName,
    required this.voivodeshipName,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    nickname: json["nickname"],
    name: json["name"],
    isPromoted: json["is_promoted"],
    email: json["email"],
    countryName: json["country_name"],
    voivodeshipName: json["voivodeship_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nickname": nickname,
    "name": name,
    "is_promoted": isPromoted,
    "email": email,
    "country_name": countryName,
    "voivodeship_name": voivodeshipName,
  };
}
