import 'package:cinmood_app/HomePage.dart';
import 'package:flutter/material.dart';

class Begin extends StatefulWidget {
  const Begin({super.key});

  @override
  State<Begin> createState() => _BeginState();
}

class _BeginState extends State<Begin> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
     MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10152B),
      body: Center(
        child: Image.asset(
          'assets/image.png',
          width: 150,
        ),
      ),
    );
  }
}
