import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';




class BuildCardVet extends StatefulWidget {
  const BuildCardVet({Key? key}) : super(key: key);

  @override
  State<BuildCardVet> createState() => _BuildCardVetState();
}

class _BuildCardVetState extends State<BuildCardVet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(onPressed: () {
        Uri uri = Uri.https("www.genevet.pl");
        launchUrl(uri);
      },
        child: Text("vet".tr, style: const TextStyle(
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
                side: const BorderSide(color: Colors.deepPurple, width: 3)
            ),
          ),
        ),
      ),
    );
  }
}




