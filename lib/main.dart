import 'package:flutter/material.dart';
import 'package:mydiary/CameraPackage/Camera.dart';
import 'package:mydiary/DemoTesting/ShortsUi/OptionScreen.dart';

import 'package:mydiary/Screens/DashBorad/dashboard.dart';
import 'package:mydiary/Screens/Home/home_screen.dart';
import 'package:mydiary/Screens/Home/radio.dart';
import 'package:mydiary/SplashToLogin/Splash.dart';

import 'Screens/CustomPlayer.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/radioButton.dart';
import 'SplashToLogin/audiplayer.dart';
import 'Youtubecopy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //fjghfkjgh
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home:   YouTubeClone(),
      debugShowCheckedModeBanner: false,
    );
  }
}

