import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class YouTubeClone extends StatefulWidget {
  @override
  _YouTubeCloneState createState() => _YouTubeCloneState();
}

class _YouTubeCloneState extends State<YouTubeClone> {
  String? selectedVideoId;
  bool showCommentBox = false;
  final List<Map<String, String>> comments = [
    {
      'username': 'User1',
      'comment': 'Great video!',
    },
    {
      'username': 'User2',
      'comment': 'Very informative.',
    },
  ];
  final TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouTube Clone'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: selectedVideoId == null ? buildVideoList() : buildVideoPlayer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Library'),
        ],
      ),
    );
  }

  Widget buildVideoList() {
    final List<Map<String, String>> videos = [
      {
        'title': 'Flutter Tutorial',
        'thumbnail': 'https://via.placeholder.com/150',
        'videoId': 'dQw4w9WgXcQ',
      },
      {
        'title': 'Dart Programming',
        'thumbnail': 'https://via.placeholder.com/150',
        'videoId': '3fumBcKC6RE',
      },
    ];

    return ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              selectedVideoId = videos[index]['videoId'];
            });
          },
          child: Column(
            children: [
              Image.network(videos[index]['thumbnail']!),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(videos[index]['title']!),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildVideoPlayer() {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: selectedVideoId!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Column(
      children: [
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildIconButton(Icons.thumb_up, () {
                // Implement like functionality
              }),
              buildIconButton(Icons.thumb_down, () {
                // Implement dislike functionality
              }),
              buildIconButton(Icons.share, () {
                // Implement share functionality
              }),
              buildIconButton(Icons.comment, () {
                setState(() {
                  showCommentBox = !showCommentBox;
                });
              }),
            ],
          ),
        ),
        if (showCommentBox) buildCommentBox(),
        Expanded(child: buildCommentSection()),
        ElevatedButton(
          onPressed: () {
            setState(() {
              selectedVideoId = null;
            });
          },
          child: Text('Back to List'),
        ),
      ],
    );
  }

  Widget buildIconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      alignment: Alignment.topCenter,
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            alignment: Alignment.center,
            icon: Icon(icon, color: Colors.black),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }

  Widget buildCommentBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          TextField(
            controller: _commentController,
            decoration: InputDecoration(
              labelText: 'Add a comment...',
              border: OutlineInputBorder(),
            ),
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                setState(() {
                  comments.add({
                    'username': 'CurrentUser',
                    'comment': value,
                  });
                  _commentController.clear();
                  showCommentBox = false;
                });
              }
            },
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              if (_commentController.text.isNotEmpty) {
                setState(() {
                  comments.add({
                    'username': 'CurrentUser',
                    'comment': _commentController.text,
                  });
                  _commentController.clear();
                  showCommentBox = false;
                });
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  Widget buildCommentSection() {
    return ListView.builder(
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child: Text(comments[index]['username']![0])),
          title: Text(comments[index]['username']!),
          subtitle: Text(comments[index]['comment']!),
        );
      },
    );
  }
}