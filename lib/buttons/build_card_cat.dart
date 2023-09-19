import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zdrowerasowe_v1/species/cat.dart';




class BuildCardCat extends StatefulWidget {
  const BuildCardCat({Key? key}) : super(key: key);

  @override
  State<BuildCardCat> createState() => _BuildCardCatState();
}

class _BuildCardCatState extends State<BuildCardCat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(onPressed: catForYou,
        child: Text("cat".tr, style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
            textAlign: TextAlign.center
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<
              RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.blue, width: 3)
            ),
          ),
        ),
      ),
    );
  }

  catForYou() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Cat()));
  }
}




