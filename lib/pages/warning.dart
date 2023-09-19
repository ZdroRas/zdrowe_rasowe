import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Warning extends StatefulWidget {
  const Warning({super.key});

  @override
  State<Warning> createState() => _WarningState();
}

class _WarningState extends State<Warning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("UWAŻAJ!",
        style: TextStyle(
          fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 100,
                child: Image.asset("assets/warning.png", height: 50)
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text("warning_article1".tr, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article2".tr, style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article3".tr, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber[600])),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article4".tr, style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article5".tr, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber[600])),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article6".tr, style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article7".tr, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber[600])),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article8".tr, style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article9".tr, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber[600])),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article10".tr, style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article11".tr, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber[600])),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article12".tr, style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article13".tr, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber[600])),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("warning_article14".tr, style: TextStyle(fontSize: 18)),
            ),



          ],
        ),
      ),
    );
  }
}
