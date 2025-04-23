import 'package:cinmood_app/FavoritesPage.dart';
import 'package:cinmood_app/chat2.dart';
import 'package:cinmood_app/profil.dart';
import 'package:cinmood_app/video.dart';
import 'package:flutter/material.dart';

class Optiaim extends StatefulWidget {
  const Optiaim({super.key});

  @override
  State<Optiaim> createState() => _ChatState();
}

class _ChatState extends State<Optiaim> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: screenHeight * 0.20,
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
                  children: const [
                    Positioned(
                      top: 70,
                      child: Text(
                        'هنا المسلسل يلي مناسب مودك',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // الصور داخل Scroll و Box
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const Video(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/Screenshot 2025-04-22 234430.png',
                              width: 330,
                            ),
                          ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const EmptyPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/Screenshot 2025-04-22 234520.png',
                              width: 330,
                            ),
                          ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const EmptyPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/Screenshot 2025-04-23 001932.png',
                              width: 330,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // الشريط السفلي
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
                      'assets/VOICE.png',
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

// صفحة فاضية عند الضغط على الصور
class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(''), // فارغة مؤقتاً
      ),
    );
  }
}
