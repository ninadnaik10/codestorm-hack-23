import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/rating.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  TextEditingController _captionController = TextEditingController();
  TextEditingController _tagController = TextEditingController();
  String selectedBadge = 'Employee of the Month';

  final db = FirebaseFirestore.instance;

  @override
  void dispose() {
    _captionController.dispose();
    _tagController.dispose();
    super.dispose();
  }

  handleSubmit() {
    // Logic to save data
    String caption = _captionController.text;
    String tag = _tagController.text;

    db.collection("posts").add({
      "caption": caption,
      "tag": tag,
      "badge": selectedBadge,
    });
    // Use 'selectedBadge', 'caption', and 'tag' as needed for saving data.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Make a Post'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          DropdownButton<String>(
            // isExpanded: true,
            value: selectedBadge,
            onChanged: (String? newValue) {
              setState(() {
                selectedBadge = newValue!;
              });
            },
            items: <String>[
              'Employee of the Month',
              'Helper',
              'Team Player',
              'Mentor',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              controller: _captionController, // Use the controller here
              minLines: 4,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                labelText: 'Caption',
                hintText: "Enter Caption",
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              controller: _tagController, // Use the controller here
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                labelText: 'Tag a person',
                hintText: "Tag a person",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: handleSubmit,
            child: Text("Post"),
          ),
        ]),
      ),
    );
  }
}