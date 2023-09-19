import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
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
              Container(
                height: 342,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/kot-pies3.png", height: 98),
                      SizedBox(height: 25),

                      Center(
                        child: Text(
                      "app_article1".tr,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 25),
                      Center(
                        child: Text(
                          "app_article2".tr,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "app_article3".tr,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "app_article4".tr,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "app_article5".tr,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "app_article6".tr,
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "app_article7".tr,
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
            ])));
  }
}
