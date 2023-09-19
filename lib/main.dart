import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:zdrowerasowe_v1/providers/cats_breeding_provider.dart';
import 'package:zdrowerasowe_v1/providers/cats_provider.dart';
import 'package:zdrowerasowe_v1/providers/dogs_breeding_provider.dart';
import 'package:zdrowerasowe_v1/providers/dogs_provider.dart';
import 'package:zdrowerasowe_v1/slider_screen.dart';
import 'LocaleString.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CatsProvider>(
          create: (_) => CatsProvider(),
        ),
        ChangeNotifierProvider<DogsProvider>(
          create: (_) => DogsProvider(),
        ),
        ChangeNotifierProvider<CatsBreedingProvider>(
          create: (_) => CatsBreedingProvider(),
        ),
        ChangeNotifierProvider<DogsBreedingProvider>(
          create: (_) => DogsBreedingProvider(),
        ),
      ],

        child: Builder(builder: (BuildContext context) {
          return GetMaterialApp(
            translations: LocaleString(),
            locale: Locale("pl", "PL"),
            title: "ZdroweRasowe",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.blueGrey),
            home: const SliderScreen(),
          );
        }),
      );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
