import 'package:flutter/material.dart';
import 'package:mydiary/DemoTesting/ShortsUi/OptionScreen.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network( "https://media.istockphoto.com/id/1652712343/photo/motivational-and-inspirational-wording.webp?b=1&s=170667a&w=0&k=20&c=tgnpeBKvO7OVnbCNvZ36QqChAwMWBRoSR0WIigNbD0I=",fit: BoxFit.cover,)
     ,OptionsScreen()

      ],
    );
  }
}
