import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CreateSurvey extends StatefulWidget {
  const CreateSurvey({super.key});

  @override
  State<CreateSurvey> createState() => _CreateSurveyState();
}

class _CreateSurveyState extends State<CreateSurvey> {
  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    return Scaffold(
      appBar: AppBar(actions: []),
      body: Column(
        children: [
          Text("Surveys"),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/survey');
          }, child: Text("Create Survey")),
          // ListView.builder(itemBuilder: itemBuilder)
        ],
      ),
    );
  }
}