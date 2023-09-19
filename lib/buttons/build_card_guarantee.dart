import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/guarantee.dart';

class BuildCardGuarantee extends StatefulWidget {
  const BuildCardGuarantee({Key? key}) : super(key: key);

  @override
  State<BuildCardGuarantee> createState() => _BuildCardGuaranteeState();
}

class _BuildCardGuaranteeState extends State<BuildCardGuarantee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 150,
      height: 50,
      child: TextButton(
        onPressed: openPage,
        child: Text("guarantee".tr,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.amber, width: 3),
            ),
          ),
        ),
      ),
    );
  }

  openPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Guarantee()));
  }
}
