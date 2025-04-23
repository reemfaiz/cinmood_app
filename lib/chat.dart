import 'package:cinmood_app/FavoritesPage.dart';
import 'package:cinmood_app/chat2.dart';
import 'package:cinmood_app/profil.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Chat2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // المحتوى الرئيسي
          Column(
            children: [
              Container(
                height: screenHeight * 0.40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF10152B),
                      Color(0xFF10152B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 7),
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Positioned(
                      top: 70,
                      child: Text(
                        '!تكلم مع سيني عن الفلم ',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      child: Image.asset(
                        'assets/cricle top.png',
                        width: 300,
                        height: 300,
                      ),
                    ),
                    Positioned(
                      top: 200,
                      right: MediaQuery.of(context).size.width / 2 - 100,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AnotherPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/cricle clos.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'عبر عن مزاجك اليوم',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    SelectableFace(imagePath: 'assets/angle.png'),
                    SizedBox(width: 10),
                    SelectableFace(imagePath: 'assets/cray.png'),
                    SizedBox(width: 10),
                    SelectableFace(imagePath: 'assets/smail.png'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SelectableFace(imagePath: 'assets/sad.png'),
                  SizedBox(width: 10),
                  SelectableFace(imagePath: 'assets/haha.png'),
                  SizedBox(width: 10),
                  SelectableFace(imagePath: 'assets/facehart.png'),
                  SizedBox(width: 10),
                ],
              ),
              const SizedBox(height: 150),
            ],
          ),

          // الشريط السفلي بالصورة
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/newbar.png',
                  width: screenWidth,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  top: -50,
                  right: 150,
                  bottom: 0,
                  left: 150,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const Chat2()),
                      );
                    },
                    child: Image.asset(
                      'assets/bigcricle.png',
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
                Positioned(
                  right: 89,
                  bottom: 15,
                  left: 250,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Favoritespage()),
                      );
                    },
                    child: Image.asset(
                      'assets/heart.png',
                      width: 30,
                      height: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 89,
                  bottom: 15,
                  right: 250,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const Profil()),
                      );
                    },
                    child: Image.asset(
                      'assets/home.png',
                      width: 30,
                      height: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// بقية الكلاسات نفس ما هي
class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('صفحة جديدة')),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('المفضلة')),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('الصفحة الرئيسية')),
    );
  }
}

class SelectableFace extends StatefulWidget {
  final String imagePath;

  const SelectableFace({super.key, required this.imagePath});

  @override
  State<SelectableFace> createState() => _SelectableFaceState();
}

class _SelectableFaceState extends State<SelectableFace> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: 80,
        height: 80,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF10152B) : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xFF10152B),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Image.asset(
            widget.imagePath,
            color: isSelected ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
