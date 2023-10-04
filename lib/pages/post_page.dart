import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
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
          padding: const EdgeInsets.all(8.0),
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
        Image.network(
          'https://cdn.britannica.com/25/91925-050-8D47C039/kite-flight.jpg', // Replace with your image URL
        ),
        // Like and Comment Section
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 8),
                  Text('Like'),
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
