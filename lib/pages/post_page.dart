import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {


  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  int likeCount = 0;

  bool isLiked = false;

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
      if (isLiked) {
        likeCount++;
      } else {
        likeCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Post'),
      ),
      body: ListView(
        children: [
          _buildPost(),
          // You can add more posts here
        ],
      ),
    );
  }

  Widget _buildPost() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // User Info Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Row(
            children: [
              Icon(
                Icons.account_circle,
                size: 40,
                color: Colors.blue, // Change the color as needed
              ),
              SizedBox(width: 8),
              Text(
                'username',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        // Post Image
        Image(image: AssetImage('images/helper_badge.png'),),
        // Like and Comment Section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: _toggleLike,
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : null,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('Like $likeCount'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment),
                  SizedBox(width: 8),
                  Text('Comment'),
                ],
              ),
            ],
          ),
        ),
        // Caption
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'This is an example caption. #Flutter #InstagramClone',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
