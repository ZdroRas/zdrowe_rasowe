import 'dart:convert';

Cats catsFromJson(String str) => Cats.fromJson(json.decode(str));

String catsToJson(Cats data) => json.encode(data.toJson());

class Cats {
  Cats({
    required this.items,
  });

  List<CatItem> items;



  factory Cats.fromJson(Map<String, dynamic> json) => Cats(
    items: List<CatItem>.from(json["items"].map((x) => CatItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class CatItem {

  CatItem({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;



  factory CatItem.fromJson(Map<String, dynamic> json) => CatItem(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
