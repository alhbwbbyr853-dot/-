// داخل ملف auth_pages.dart

import 'package:flutter/material.dart';
import 'login.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("إنشاء حساب جديد"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Icon(Icons.person_add, size: 80, color: Colors.red),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: "الاسم الكامل",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 15),
              const TextField(
                decoration: InputDecoration(
                  labelText: "البريد الإلكتروني",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 15),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "كلمة المرور",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // هنا يتم محاكاة نجاح التسجيل والعودة لصفحة الدخول
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("تم إنشاء الحساب بنجاح!")),
                  );
                  Navigator.pop(context); // العودة لصفحة تسجيل الدخول
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("تأكيد وإنشاء الحساب"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}