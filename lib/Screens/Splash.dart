import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mydiary/Screens/LanguageScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
  
}


class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LanguageScreen())));
    return Scaffold(
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           color: Colors.white70,
            child:
            Image.asset("images/ANkahe.jpg"),
          ),
       ],
     )
    );
  }
}
