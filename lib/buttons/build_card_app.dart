import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/about_app.dart';

class BuildCardApp extends StatefulWidget {
  const BuildCardApp({Key? key}) : super(key: key);

  @override
  State<BuildCardApp> createState() => _BuildCardAppState();
}

class _BuildCardAppState extends State<BuildCardApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(
        onPressed: openPage,
        child: Text("app".tr,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: const BorderSide(color: Colors.red, width: 3),
            ),
          ),
        ),
      ),
    );
  }

  openPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AboutApp()));
  }
}
