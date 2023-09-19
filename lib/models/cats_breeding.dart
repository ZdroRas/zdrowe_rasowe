// To parse this JSON data, do
//
//     final catsBreedingItem = catsBreedingItemFromJson(jsonString);

import 'dart:convert';

CatsBreedingItem catsBreedingItemFromJson(String str) => CatsBreedingItem.fromJson(json.decode(str));

String catsBreedingItemToJson(CatsBreedingItem data) => json.encode(data.toJson());

class CatsBreedingItem {
  List<Item> items;

  CatsBreedingItem({
    required this.items,
  });

  factory CatsBreedingItem.fromJson(Map<String, dynamic> json) => CatsBreedingItem(
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



// class GetData {
//         static const apiEndpoint = 'https://zdrowerasowe.ppk.org.pl/api/healthypurebred-breedings?id=1001&breed_id=';
//         String breedId = '';
//
//         getDataFromApi() async {
//         var accessToken = 'IerjnbPad@1bBzd%xPHk'
//             '\$oC&uXfGfqda)CCi7Z5Kr2iE3W8zMg\$p@a)UciDIiJaxn&ti@#Tz1xu0)JfW8TE(3LV5bcy))&xjAQNnLnzvmD3OeXJNU&BT&RKfHa@u3lDLWvn8#rs'
//             '\$utmnPkVU1cXUdGEQ(!hDFV9gXb5*zf@DBx9rBdg8ssKmTa&l1RNlNuKl!GZEPG)IHCC6e&1kY*wfOTdrpp#6JacqV(U7h1j()y*cNEI07@2)\$0ysy0';
//
//         var headers = {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $accessToken'
//         };
//
//           final response = await http.get(
//               (Uri.parse(apiEndpoint + breedId)), headers: headers);
//           if (response.statusCode == 200) {
//             final data = json.decode(response.body);
//             return data.map((json) => CatsBreedingItem.fromJson(json)).toList();
//           } else {
//             throw Exception();
//           }
//       }
//     }