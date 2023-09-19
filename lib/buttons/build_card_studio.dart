import 'package:flutter/material.dart';


class BuildCardStudio extends StatefulWidget {
  const BuildCardStudio({Key? key}) : super(key: key);

  @override
  State<BuildCardStudio> createState() => _BuildCardStudioState();
}

class _BuildCardStudioState extends State<BuildCardStudio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 280,
      height: 60,
      child: TextButton(
        onPressed: () {
          showDialog(context: context, builder: (_) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              title: const Text("Projekt i realizacja Aleksandra Weber"),
              content: const Text("aleksandraweber7@gmail.com"),
            );
          });
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
        child: const Text("created by Aleksandra Weber",
            style: TextStyle(
                fontSize: 8, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center),
    ));
  }

// openPage() {
//   Navigator.push(
//       context, MaterialPageRoute(builder: (context) => const Guarantee()));
// }
}
