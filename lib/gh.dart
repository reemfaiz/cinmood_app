import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // المحتوى الرئيسي (فارغ الآن)
          const Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 100), // عشان نخلي مسافة من فوق
                // هنا تقدر تضيف محتوى الصفحة
              ],
            ),
          ),

          // الشريط السفلي
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 800,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // صورة الشريط السفلي
                Image.asset(
                  'assets/bottom (2).png',
                  width: 900,
                  height: 800,
              

                ),

                // زر الدائرة (اللي بالنص)
                
                // أيقونة الصفحة الرئيسية (home)
                Positioned(
                  bottom: 20,
                  left: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const HomePage()),
                      );
                    },
                    child: Image.asset(
                      'assets/home.png',
                      width: 30,
                      height: 30,
                      color: Colors.black,
                    ),
                  ),
                ),

                // أيقونة المفضلة (heart)
                Positioned(
                  bottom: 20,
                  right: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FavoritesPage()),
                      );
                    },
                    child: Image.asset(
                      'assets/heart.png',
                      width: 30,
                      height: 30,
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

// صفحات التنقل
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('الصفحة الرئيسية')),
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

class VoicePage extends StatelessWidget {
  const VoicePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('تكلم مع سيني')),
    );
  }
}
