import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:zdrowerasowe_v1/providers/cats_provider.dart';
import '../pages/cat_breeding_details.dart';


class Cat extends StatefulWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  State<Cat> createState() => _CatState(key);
}

class _CatState extends State<Cat> {

  late Key? key;
  _CatState(Key? key) {
    this.key = key;
  }

  bool isDataLoaded = false;
  String errorMessage = '';

  @override
  void initState() {
    final provider = Provider.of<CatsProvider>(context, listen: false);
    provider.getDataFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CatsProvider>(context);
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Wyszukaj rasę..."),
            centerTitle: true,
          ),
          body: provider.isLoading
              ? getLoadingUI()
              : provider.error.isNotEmpty
                  ? getErrorUI(provider.error)
                  : getBodyUI()),
    );
  }

  Widget getLoadingUI() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SpinKitFadingCircle(
            color: Colors.deepPurple,
            size: 80,
          ),
          Text(
            "Loading...",
            style: TextStyle(fontSize: 20, color: Colors.indigo),
          )
        ],
      ),
    );
  }

  Widget getErrorUI(String error) {
    return Center(
      child: Text(
        error,
        style: TextStyle(color: Colors.red, fontSize: 22),
      ),
    );
  }

  Widget getBodyUI() {
    final provider = Provider.of<CatsProvider>(context);
    return Column(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          onChanged: (value) {
            provider.search(value);
          },
          decoration: InputDecoration(
              hintText: 'Szukaj rasy',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              suffixIcon: Icon(Icons.search)),
        ),
      ),
      Expanded(
          child: Consumer(
              builder: (context, CatsProvider catsProvider, child) =>
                  ListView.builder(
                    itemCount: catsProvider.searchedCats.items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(catsProvider.searchedCats.items[index].name),
                          trailing: FaIcon(FontAwesomeIcons.cat, color: Colors.amber),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CatBreedingDetails(
                                          catsProvider.searchedCats.items[index].id)
                                ));
                            print("log" +
                                catsProvider.searchedCats.items[index].id);
                            print("log" +
                                catsProvider.searchedCats.items[index].name);
                          });
                    },
                  )
          )
      )
    ]
    );
  }
}
