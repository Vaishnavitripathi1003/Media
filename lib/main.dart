import 'package:flutter/material.dart';
import 'package:mydiary/DemoTesting/ShortsUi/OptionScreen.dart';

import 'package:mydiary/Screens/DashBorad/dashboard.dart';

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
      home:  const Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

