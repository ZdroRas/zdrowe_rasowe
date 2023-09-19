import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildCardFb extends StatefulWidget {
  const BuildCardFb({Key? key}) : super(key: key);

  @override
  State<BuildCardFb> createState() => _BuildCardFbState();
}

class _BuildCardFbState extends State<BuildCardFb> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            color: Colors.transparent,
            width: 250,
            height: 50,
            child: TextButton(
                onPressed: () {
                  Uri uri = Uri.https('www.facebook.com',
                      'profile.php?id=61550777555712&locale=pl_PL');
                  launchUrl(uri);
                },
                child: Image.asset("assets/facebook.png"))),
      ],
    );
  }
}
