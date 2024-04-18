import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
class Flipcard extends StatefulWidget {
  const Flipcard({super.key});

  @override
  State<Flipcard> createState() => _FlipcardState();
}

class _FlipcardState extends State<Flipcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
       child: Container(
         color: Colors.white70,
         child: Card(
           elevation: 10,
             child:  Container(
               color: Colors.white70,
                 height: 200,
                 width: 200,
                 child: FlipCard(
                   direction: FlipDirection.HORIZONTAL, // The default flip direction
                   front: Container(
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     child: Center(
                       child: Text('Front Side', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                     ),
                   ),
                   back: Container(
                     decoration: BoxDecoration(
                       color: Colors.red,
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     child: Center(
                       child: Text('Back Side', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                     ),
                   ),
                 ),
               ),

         ),
       ),
      ),
    );
  }
}
