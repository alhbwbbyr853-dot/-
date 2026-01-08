import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState(){
    Timer(Duration(seconds: 3),(){Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()),)
    // Navigator.pushAndRemoveUntil(context,
    //   MaterialPageRoute(builder: (context)=>Login(), (route) => false ,)
    // )
        ;
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assetes/images/d.jpg"),
            ),
            Text("ستورم",style: TextStyle(fontSize: 28,color: Colors.red, fontWeight: FontWeight.bold,)
            )],
        ),
      ),
    );
  }
}
