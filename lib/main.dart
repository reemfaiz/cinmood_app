import 'package:cinmood_app/FavoritesPage.dart';
import 'package:cinmood_app/HomePage.dart';
import 'package:cinmood_app/begin.dart';
import 'package:cinmood_app/video.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        initialRoute: "/Begin",
        routes: {
          '/': (context) => const Begin(),
        
          '/Video': (context) => const Video(),
        });
  }
}
