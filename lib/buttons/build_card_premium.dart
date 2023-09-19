import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildCardPremium extends StatefulWidget {
  const BuildCardPremium({Key? key}) : super(key: key);

  @override
  State<BuildCardPremium> createState() => _BuildCardPremiumState();
}

class _BuildCardPremiumState extends State<BuildCardPremium> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 80,
      height: 40,
      child: TextButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  title: Text("Preium"),
                  content: Text("Juź niebawem udostępnimy opcję premium, "
                      "dzięki której uzyskasz rabaty na szeroką gamę artykułów i usług dla zwierząt. "
                      "Śledź nas na Facebooku, tam będziemy publikować wszelkie aktualizacje."),
                );
              });
        },
        child: Text("premium".tr,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.black, width: 4)),
          ),
        ),
      ),
    );
  }

  // openPage() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => const Guarantee()));
  // }
}
