import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../providers/cats_breeding_provider.dart';

class CatBreedingDetails extends StatefulWidget {
  const CatBreedingDetails(this.id);
  final String id;

  @override
  State<CatBreedingDetails> createState() => _CatBreedingDetailsState(id);
}

class _CatBreedingDetailsState extends State<CatBreedingDetails> {
  _CatBreedingDetailsState(this.id) {
    print("log1" + this.id);
  }

  bool isDataLoaded = false;
  String errorMessage = '';
  final String id;

  @override
  void initState() {
    final provider = Provider.of<CatsBreedingProvider>(context, listen: false);
    print("log1");
    provider.getDataFromApi(id);
    print("log2");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CatsBreedingProvider>(context);
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
    return Column(
      children: [
        Expanded(
            child: Consumer(
                builder: (context, CatsBreedingProvider catsBreedingProvider, child) =>
                    ListView.builder(
                      itemCount: catsBreedingProvider.searchedBreeds.items.length,
                      itemBuilder: (context, index) => ListTile(
                          leading: catsBreedingProvider.searchedBreeds.items[index].isPromoted ? Image.asset("assets/kastrujemy.jpg") : FaIcon(FontAwesomeIcons.cat),
                          title: Text(catsBreedingProvider.searchedBreeds.items[index].nickname),
                          subtitle: Text(catsBreedingProvider.searchedBreeds.items[index].email),
                          trailing: FaIcon(FontAwesomeIcons.cat, color: Colors.amber),
                        ),
                    )
            )
        )
      ],
    );
  }
}
