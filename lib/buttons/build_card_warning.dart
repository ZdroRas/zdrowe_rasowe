import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zdrowerasowe_v1/pages/warning.dart';




class BuildCardWarning extends StatefulWidget {
  const BuildCardWarning({Key? key}) : super(key: key);

  @override
  State<BuildCardWarning> createState() => _BuildCardWarningState();
}

class _BuildCardWarningState extends State<BuildCardWarning> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(onPressed: openPage,
        child: Text("warning".tr, style: const TextStyle(
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
                side:  BorderSide(color: Colors.red.shade900, width: 7)
            ),
          ),
        ),
      ),
    );
  }

  openPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Warning()));
  }
}


