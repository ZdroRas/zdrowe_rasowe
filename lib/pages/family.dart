import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Family extends StatefulWidget {
  const Family({super.key});

  @override
  State<Family> createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  List imageList = [
    {"id": 2, "image_path": 'assets/pies1.jpg'},
    {"id": 3, "image_path": 'assets/pies2.jpg'},
    {"id": 4, "image_path": 'assets/pies3.jpg'},
    {"id": 5, "image_path": 'assets/pies4.png'},
    {"id": 5, "image_path": 'assets/pies5.jpg'},
    {"id": 6, "image_path": 'assets/szczeniak1.png'},
    {"id": 7, "image_path": 'assets/psy1.png'},
    {"id": 8, "image_path": 'assets/psy2.jpg'},
  ];

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Image.asset("assets/zr-bez-tla.png"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
            color: Colors.blueGrey,
            child: Column(children: [
              const SizedBox(height: 20),
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 1.5,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 17 : 8,
                            height: 7.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.red
                                    : Colors.teal),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    height: 342,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("assets/kot-pies3.png", height: 58),
                          SizedBox(height: 25),
                          Center(
                            child: Text(
                              "family_article1".tr,
                              style: TextStyle(fontSize: 22, color: Colors.amber, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 35,),
                          ListTile(
                            title: Text(
                                "family_article2".tr, textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                           SizedBox(height: 20,),
                          Center(
                            child: Text(
                              "family_article3".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent[300]),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article4".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article4.1".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article4.2".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article5".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article6".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article7".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article8".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article9".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article10".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent[300]),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article11".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article14".tr,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article12".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article13".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article14".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article15".tr,
                              style: TextStyle(fontSize: 18,  color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article16".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber)
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article17".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article18".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article19".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article20".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article21".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article22".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent[300]),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article23".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article24".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article25".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article26".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article27".tr,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent[300]),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article28".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: Text(
                              "family_article29".tr,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset("assets/kot-linia.png")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
