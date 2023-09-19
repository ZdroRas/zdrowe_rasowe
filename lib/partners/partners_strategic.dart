import 'package:flutter/material.dart';

class StrategicPartners extends StatefulWidget {
  const StrategicPartners({super.key});

  @override
  State<StrategicPartners> createState() => _StrategicPartnersState();
}

class _StrategicPartnersState extends State<StrategicPartners> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
              height: 50,
              width: 50,
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/pies1.jpg"))),
          SizedBox(
            width: 20,
          ),
          Container(
              height: 50,
              width: 50,
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/pies2.jpg"))),
        ],
      ),
    );
  }
}
