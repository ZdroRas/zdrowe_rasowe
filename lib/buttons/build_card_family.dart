import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zdrowerasowe_v1/pages/family.dart';

class BuildCardFamily extends StatefulWidget {
  const BuildCardFamily({Key? key}) : super(key: key);

  @override
  State<BuildCardFamily> createState() => _BuildCardFamilyState();
}

class _BuildCardFamilyState extends State<BuildCardFamily> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(
        onPressed: openPage,
        child: Text(
          "family".tr,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(color: Colors.blueAccent, width: 3),
            ),
          ),
        ),
      ),
    );
  }

  openPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Family()));
  }
}
