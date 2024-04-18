import 'package:flutter/material.dart';

import 'ContentScreen.dart';
import 'package:flutter_swiper_3/flutter_swiper_3.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
class HomeShorts extends StatefulWidget {
  const HomeShorts({super.key});

  @override
  State<HomeShorts> createState() => _HomeShortsState();
}

class _HomeShortsState extends State<HomeShorts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              ContentScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
