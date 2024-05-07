import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomComment extends StatefulWidget {
  const CustomBottomComment({super.key});

  @override
  State<CustomBottomComment> createState() => _CustomBottomCommentState();
}

class _CustomBottomCommentState extends State<CustomBottomComment> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom>0? MediaQuery.of(context).viewInsets.bottom+16:16,left: 16,right: 16
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Add a comment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(

              onTap: (){


              },
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.send),
                hintText: 'Enter your comment...',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
