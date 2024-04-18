import 'package:flutter/material.dart';

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  bool isLiked = false;
  bool isCommenting = false; // Track if user is currently commenting
var likes=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 110),
                  Text('Flutter is beautiful and fast 💙❤💛 ..'),
                  SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLiked = !isLiked;// Toggle the like state
                      });
                    },
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_outline,
                      color: isLiked ? Colors.red : null, // Change color if liked
                    ),
                  ),
                   methodtosetlikecount(isLiked),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isCommenting = !isCommenting; // Toggle commenting state
                      });
                    },
                    child: Icon(Icons.comment_rounded),
                  ),
                  Text('0'),
                  SizedBox(height: 20),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: Icon(Icons.send),
                  ),
                  SizedBox(height: 50),
                  Icon(Icons.more_vert),
                ],
              ),
            ],
          ),
          // Render editable text field for commenting if isCommenting is true
          if (isCommenting)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.send),
                  hintText: 'Write your comment...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
        ],
      ),
    );
  }

 Widget methodtosetlikecount(bool isliked) {
    if(isliked==true)
      {
        likes++;
      }
    else{
      if(likes>0)
        {
          likes--;        }

    }
    return Text(likes.toString());

  }
}
