
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

import '../models/dogs.dart';

class DogsProvider extends ChangeNotifier {
  static const apiEndpoint = 'https://zdrowerasowe.ppk.org.pl/api/healthypurebred-breeds?id=1000';

  bool isLoading = true;
  String error = '';
  Dogs dogs = Dogs(items: []);
  Dogs searchedDogs =  Dogs(items: []);
  String searchedText = '';

  getDataFromApi() async {
    var accessToken = 'IerjnbPad@1bBzd%xPHk'
        '\$oC&uXfGfqda)CCi7Z5Kr2iE3W8zMg\$p@a)UciDIiJaxn&ti@#Tz1xu0)JfW8TE(3LV5bcy))&xjAQNnLnzvmD3OeXJNU&BT&RKfHa@u3lDLWvn8#rs'
        '\$utmnPkVU1cXUdGEQ(!hDFV9gXb5*zf@DBx9rBdg8ssKmTa&l1RNlNuKl!GZEPG)IHCC6e&1kY*wfOTdrpp#6JacqV(U7h1j()y*cNEI07@2)\$0ysy0';

    try {
      Response response = await http.get((Uri.parse(apiEndpoint)), headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken'
      });
      if (response.statusCode == 200) {
        dogs = dogsFromJson(response.body);
      } else {
        error = response.statusCode.toString();
      }
    } catch (e) {
      error = e.toString();
    }
    isLoading = false;
    updateData();
  }

  updateData() {
    searchedDogs.items.clear();
    if (searchedText.isEmpty) {
      searchedDogs.items.addAll(dogs.items);
    } else {
      searchedDogs.items.addAll(dogs.items
          .where(
              (element) => element.name.toLowerCase().startsWith(searchedText))
          .toList());
    }
    notifyListeners();
  }

  search(String name) {
    searchedText = name;
    updateData();
  }
}