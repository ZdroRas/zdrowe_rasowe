import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FB extends StatefulWidget {
  const FB({super.key});

  @override
  State<FB> createState() => _FBState();
}

class _FBState extends State<FB> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 80,
          width: 80,
          child: TextButton(
            onPressed: () {
              Uri uri = Uri.https('www.facebook.com',
                  'profile.php?id=61550777555712&locale=pl_PL');
              launchUrl(uri);
            },
            child: CircleAvatar(
                backgroundImage: AssetImage("assets/facebook.png")),
          )),
    );
  }
}
