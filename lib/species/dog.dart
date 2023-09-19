import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../pages/dog_breeding_details.dart';
import '../providers/dogs_provider.dart';


class Dog extends StatefulWidget {
  const Dog({Key? key}) : super(key: key);

  @override
  State<Dog> createState() => _DogState(key);
}

class _DogState extends State<Dog> {

  late Key? key;
  _DogState(Key? key) {
    this.key = key;
  }

  bool isDataLoaded = false;
  String errorMessage = '';

  @override
  void initState() {
    final provider = Provider.of<DogsProvider>(context, listen: false);
    provider.getDataFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DogsProvider>(context);
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
              : getBodyUI()
      ),
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
            style: TextStyle(
                fontSize: 20,
                color: Colors.indigo
            ),
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
    final provider = Provider.of<DogsProvider>(context, listen: false);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              provider.search(value);
            },
            decoration: InputDecoration(
                hintText: 'Szukaj rasy',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                suffixIcon: Icon(Icons.search)
            ),
          ),
        ),
        Expanded(
            child: Consumer(
                builder: (context, DogsProvider dogsProvider, child) => ListView.builder(
                      itemCount: dogsProvider.searchedDogs.items.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(dogsProvider.searchedDogs.items[index].name),
                        trailing: FaIcon(FontAwesomeIcons.dog, color: Colors.amber),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DogBreedingDetails(
                                        dogsProvider.searchedDogs.items[index].id)
                                ));
                            print("log" +
                                dogsProvider.searchedDogs.items[index].id);
                            print("log" +
                                dogsProvider.searchedDogs.items[index].name);
                          }
                      ),
                    )
            )
        )
      ],
    );
  }
}

