import 'package:flutter/material.dart';
import 'package:untitled6/Homee.dart';
import 'newaccount.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _name=TextEditingController();
  TextEditingController _password =TextEditingController();
  TextEditingController _email =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("تسجيل الدخول")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TextField( controller: _name,
                decoration: InputDecoration(labelText: " اسم المستخدم", border: OutlineInputBorder())),
            const SizedBox(height: 15),
           TextField( controller: _email,
                decoration: InputDecoration(labelText: "البريد الإلكتروني", border: OutlineInputBorder())),
            const SizedBox(height: 15),
             TextField( controller: _password,
                obscureText: true, decoration: InputDecoration(labelText: "كلمة المرور", border: OutlineInputBorder())),
            const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_name.text == "Abeer" &&
                    _email.text == "AbeerAli@gimail.com" &&
                    _password.text == "1234") {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homee(),
                    ),

                  );

                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(" هذا الحساب غير موجودة يمكنك انشاء حساب")));

              }});
            },
            child: const Text("دخول"),
          ),



          TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage())),
              child: const Text("إنشاء حساب جديد"),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("إنشاء حساب")),
      body: Center(
        child: ElevatedButton(
          child: const Text("تم التسجيل"),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage())),
        ),
      ),
    );
  }
}