import 'dart:convert';

Dogs dogsFromJson(String str) => Dogs.fromJson(json.decode(str));

String dogsToJson(Dogs data) => json.encode(data.toJson());

class Dogs {
  Dogs({
    required this.items,
  });

  List<DogItem> items;



  factory Dogs.fromJson(Map<String, dynamic> json) => Dogs(
    items: List<DogItem>.from(json["items"].map((x) => DogItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class DogItem {

  DogItem({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;



  factory DogItem.fromJson(Map<String, dynamic> json) => DogItem(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
