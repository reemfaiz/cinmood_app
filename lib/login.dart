import 'package:cinmood_app/begin.dart';
import 'package:cinmood_app/chat.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
          Positioned(
  top: 70,
  left: 20,
  right: 30,
  child: Image.asset(
    "assets/logo.png",
    width: 10, // حجم أصغر وواضح
    height: 200,
  ),
),

            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      TextField(
                        controller: usernameController,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          labelText: 'اسم المستخدم:',
                          labelStyle: TextStyle(
                            fontFamily: "Cairo",
                            color: Color(0xFF030340).withOpacity(0.6),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF030340), width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: passwordController,
                        textAlign: TextAlign.right,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'كلمة المرور:',
                          labelStyle: TextStyle(
                            fontFamily: "Cairo",
                            color: Color(0xFF030340).withOpacity(0.6),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFF030340), width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            activeColor: Color(0xFF030340),
                          ),
                          const Text(
                            "تذكرني",
                            style: TextStyle(
                                color: Color(0xFF030340), fontFamily: "Cairo"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 1),
                    
                
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF030340),
                                Color(0xFF030340),
                                  Color(0xFF030340),
                            
                            ],
                            stops: [0.0, 0.69, 0.97],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            String user = usernameController.text.trim();
                            String pass = passwordController.text.trim();

                            if (user.isEmpty || pass.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('الرجاء إدخال جميع الحقول'),
                                ),
                              );
                            } else {
                              print("اسم المستخدم: $user");
                              print("كلمة المرور: $pass");
                              // هنا تقدر تنقل لصفحة المستخدم أو تحقق الدخول
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>Chat(
                                        
                                        )
                                        ),
                              );
                            }
                          },
                          child: const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Cairo"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xFF030340),
                              thickness: 1,
                              endIndent: 8,
                            ),
                          ),
                          const Text(
                            "أو",
                            style: TextStyle(
                                color: Color(0xFF030340), fontFamily: "Cairo"),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFF030340),
                              thickness: 1,
                              indent: 8,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildSocialIcon('assets/google (1).png', () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('تم تسجيل الدخولGoogle')),
                            );
                          }),
                          const SizedBox(width: 16),
                          buildSocialIcon('assets/apple.png', () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('تسجيل الدخولـ Apple')),
                            );
                          }),
                          const SizedBox(width: 16),
                          buildSocialIcon('assets/facebook.png', () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('تسجيل دخول ـ Facebook')),
                            );
                          }),
                        ],
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialIcon(String assetPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFF030340), width: 1.5),
        ),
        child: Image.asset(assetPath, width: 24, height: 24),
      ),
    );
  }
}
