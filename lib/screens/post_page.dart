import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  int likeCount = 0;
  List posts = [];

  final db = FirebaseFirestore.instance;
  bool isLiked = false;

  Future<void> _refreshPosts() async {
    await getPosts();
  }

  Future<void> getPosts() async {
    final querySnapshot = await db.collection("posts").get();
    posts.clear();
    for (var docSnapshot in querySnapshot.docs) {
      print('${docSnapshot.id} => ${docSnapshot.data()}');
      posts.add(docSnapshot.data());
    }
  }

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
        title: Text('Posts Page'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshPosts,
        child: ListView(
          children: [
            _buildPost(),
            // You can add more posts here
          ],
        ),
      ),
    );
  }

  Widget _buildPost() {
    return SizedBox(
      height: 800,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // User Info Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 40,
                        color: Colors.blue, // Change the color as needed
                      ),
                      SizedBox(width: 8),
                      Text("Ninad Naik")
                    ],
                  ),
                ),
                // Post Image
                Image(
                  image: AssetImage('assets/images/helper_badge.png'),
                ),
    
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    posts[index]["caption"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
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
                      // Row(
                      //   children: [
                      //     Icon(Icons.comment),
                      //     SizedBox(width: 8),
                      //     Text('Comment'),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                // Caption
              ],
            );
          },
        ),
      ),
    );
  }
}
