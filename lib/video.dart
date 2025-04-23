import 'package:cinmood_app/FavoritesPage.dart';
import 'package:cinmood_app/chat2.dart';
import 'package:cinmood_app/optiaim.dart';
import 'package:cinmood_app/profil.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _Chat2State();
}

class _Chat2State extends State<Video> {
  bool isFavorite = false;

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
                height: screenHeight * 0.80,
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
                  children: [
                    const Positioned(
                      top: 70,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          'مشهد تشويقي للمسلسل المقترح',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/Screenshot 2025-04-23 003528.png',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/Screenshot 2025-04-23 003628.png',
                                      width: 90,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isFavorite = !isFavorite;
                                          });

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                isFavorite
                                                    ? 'تمت الإضافة إلى المفضلة ✅'
                                                    : 'تمت الإزالة من المفضلة ❌',
                                              ),
                                              duration:
                                                  Duration(seconds: 2),
                                              backgroundColor: isFavorite
                                                  ? Colors.green
                                                  : Colors.red,
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          isFavorite
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'يعرض مسلسل سيلفي بكل حلقة يوميات وقضايا من قلب المجتمع السعودي. يبطله ناصر القصبي، وقد دارت السلسلة في إطار كوميدي بمشاركة البطولة محمد الطويان، حبيب الحبيب، مها الحقباني. ويشارك الإخراج: رماس منصور، عبد الإله السناني، عبدالمحسن النمر، ويشير غنيم.',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 16,
                                  color: Colors.white,
                                  height: 1.6,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
