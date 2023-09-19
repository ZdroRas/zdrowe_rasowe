import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildCardWebsite extends StatefulWidget {
  const BuildCardWebsite({Key? key}) : super(key: key);

  @override
  State<BuildCardWebsite> createState() => _BuildCardWebsiteState();
}

class _BuildCardWebsiteState extends State<BuildCardWebsite> {
  @override
  Widget build(BuildContext context) {
    Color shadowColor = Colors.red;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.transparent,
          width: 220,
          height: 40,
          child: TextButton(
            onPressed: () {
              Uri uri = Uri.https("www.aleksandraweber.studio");
              launchUrl(uri);
            },
            child: Text("created by \nAleksandra Weber",
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    for (double i = 1; i < 6; i++)
                      Shadow(color: shadowColor, blurRadius: 3)
                  ],
                  fontSize: 9,
                ),
                textAlign: TextAlign.center),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.transparent)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
