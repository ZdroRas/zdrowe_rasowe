import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../species/dog.dart';




class BuildCardDog extends StatefulWidget {
  const BuildCardDog({Key? key}) : super(key: key);

  @override
  State<BuildCardDog> createState() => _BuildCardDogState();
}

class _BuildCardDogState extends State<BuildCardDog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(onPressed: dogForYou,
        child: Text("dog".tr, style: const TextStyle(
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
                side: const BorderSide(color: Colors.green, width: 3)
            ),
          ),
        ),
      ),
    );
  }
  //


  dogForYou() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Dog()));
  }
}




