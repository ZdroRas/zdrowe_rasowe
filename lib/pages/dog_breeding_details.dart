import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../providers/dogs_breeding_provider.dart';

class DogBreedingDetails extends StatefulWidget {
  const DogBreedingDetails(this.id);
  final String id;

  @override
  State<DogBreedingDetails> createState() => _DogBreedingDetailsState(id);
}

class _DogBreedingDetailsState extends State<DogBreedingDetails> {
  _DogBreedingDetailsState(this.id) {
    print("log1" + this.id);
  }

  bool isDataLoaded = false;
  String errorMessage = '';
  final String id;

  @override
  void initState() {
    final provider = Provider.of<DogsBreedingProvider>(context, listen: false);
    print("log1");
    provider.getDataFromApi(id);
    print("log2");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DogsBreedingProvider>(context);
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Image.asset("assets/zr-bez-tla.png", height: 50,),
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
    return Column(
      children: [
        Expanded(
            child: Consumer(
                builder: (context, DogsBreedingProvider dogsBreedingProvider, child) =>
                    ListView.builder(
                      itemCount: dogsBreedingProvider.searchedBreeds.items.length,
                      itemBuilder: (context, index) => ListTile(
                        leading: dogsBreedingProvider.searchedBreeds.items[index].isPromoted ? Image.asset("assets/kastrujemy.jpg") : FaIcon(FontAwesomeIcons.dog),
                        title: Text(dogsBreedingProvider.searchedBreeds.items[index].nickname),
                        subtitle: Text(dogsBreedingProvider.searchedBreeds.items[index].email),
                        trailing: FaIcon(FontAwesomeIcons.dog, color: Colors.amber),
                      ),
                    )
            )
        )
      ],
    );
  }
}
