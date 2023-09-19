import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';




class BuildCardSafe extends StatefulWidget {
  const BuildCardSafe({Key? key}) : super(key: key);

  @override
  State<BuildCardSafe> createState() => _BuildCardSafeState();
}

class _BuildCardSafeState extends State<BuildCardSafe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(onPressed: () {
        Uri uri = Uri.https("www.bezpieczny.pl");
        launchUrl(uri);
      },
        child: Text("safe".tr, style: const TextStyle(
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
                side: const BorderSide(color: Colors.orange, width: 3)
            ),
          ),
        ),
      ),
    );
  }
}




