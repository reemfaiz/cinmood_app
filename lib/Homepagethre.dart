import 'package:cinmood_app/login.dart';
import 'package:flutter/material.dart';

class Homepagethre extends StatelessWidget {
  const Homepagethre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [            const SizedBox(height: 100),

            // صورة الصفحة الأولى
            Image.asset(
              'assets/ph3.png',
              height: 300,
            ),

            const SizedBox(height: 100),

            // النص
            const Text(
            '!مو أي اقتراح... هذا اقتراح يناسبك أنت، الآن',
              style: TextStyle(
                  fontSize:20,fontFamily: "Cairo",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 100),

            // المؤشرات (مربعات صغيرة)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIndicator(isActive: false),
                const SizedBox(width: 6),
                _buildIndicator(isActive: false),
                const SizedBox(width: 6),
                _buildIndicator(isActive: true),
              ],
            ),

            const SizedBox(height: 100),

            // زر أيقونة سهم
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios,
                    color: Color(0xFF030340), size: 20),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Login()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator({required bool isActive}) {
    return Container(
      width: 20,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF030340) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF030340)),
      ),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(), // صفحة فارغة تمامًا
      ),
    );
  }
}
