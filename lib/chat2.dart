import 'package:cinmood_app/FavoritesPage.dart';
import 'package:cinmood_app/optiaim.dart';
import 'package:cinmood_app/profil.dart';
import 'package:flutter/material.dart';

class Chat2 extends StatefulWidget {
  const Chat2({super.key});

  @override
  State<Chat2> createState() => _Chat2State();
}

class _Chat2State extends State<Chat2> {
void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Optiaim()),
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
                height: screenHeight * 0.50,
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

                    //  الصورة + الدائرة الشفافة + النص تحتهم
                    Positioned(
                      top: 50,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              // الدائرة الشفافة خلف الصورة
                              Container(
                                width: 150,
                                height: 320,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xFF3D74F2).withOpacity(0.2),
                                ),
                              ),

                              // صورة الدائرة الكبيرة
                              Image.asset(
                                'assets/cricle top.png',
                                width: 300,
                                height: 300,
                              ),
                            ],
                          ),

                          const SizedBox(height: 1),

                          //  النص الرمادي
                          const Text(
                            'رشح لي مسلسل قديم يضحكني شوي، أنا طفشان.......',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 144,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),

                    // زر الإغلاق الصغير
                    Positioned(
                      top: 200,
                      right: MediaQuery.of(context).size.width / 2 - 100,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AnotherPage()),
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

              // الصف الأول للأوجه
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      SelectableFace(imagePath: 'assets/angle.png'),
                      SizedBox(width: 10),
                      SelectableFace(imagePath: 'assets/cray.png'),
                      SizedBox(width: 10),
                      SelectableFace(imagePath: 'assets/smail.png'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // الصف الثاني للأوجه
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SelectableFace(imagePath: 'assets/sad.png'),
                  SizedBox(width: 10),
                  SelectableFace(imagePath: 'assets/haha.png'),
                  SizedBox(width: 10),
                  SelectableFace(imagePath: 'assets/facehart.png'),
                ],
              ),

              const SizedBox(height: 150),
            ],
          ),

          //  الشريط السفلي
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
                        MaterialPageRoute(
                            builder: (_) => const Chat2()),
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
                        MaterialPageRoute(builder: (_) => const Favoritespage()),
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

// صفحات أخرى
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

// زر الوجه التفاعلي
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
