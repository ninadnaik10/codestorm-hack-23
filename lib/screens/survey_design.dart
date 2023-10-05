import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SurveyDesign extends StatefulWidget {
  const SurveyDesign({super.key});

  @override
  State<SurveyDesign> createState() => _SurveyDesignState();
}

class Questions {
  String title;
  String type;
  Questions(this.title, this.type);
}

class _SurveyDesignState extends State<SurveyDesign> {
  final List<Questions> listOfQuestions = [];
  final ddOptions = ["Rate", "Text"];
  final TextEditingController title = TextEditingController();
  String dropdownValue = "Rate";

  @override
  void initState() {
    super.initState();
  }

  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text("Create Survey"),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                child: Icon(Icons.send),
                onPressed: () {
                  print(listOfQuestions);
                  db.collection("forms").add({
                    "title": "Survey 1",
                    "questions": listOfQuestions.map((question) {
                      return {
                        "question": question.title,
                        "type": question.type,
                      };
                    }).toList()
                  });
                }),
            FloatingActionButton(
                onPressed: () => {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: title,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Question',
                                    ),
                                  ),
                                  Text("Choose input type"),
                                  DropdownButton(
                                      value: dropdownValue,
                                      items: ddOptions
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String? value) {
                                        // This is called when the user selects an item.
                                        setState(() {
                                          dropdownValue = value!;
                                        });
                                      }),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          listOfQuestions.add(Questions(
                                              title.text, dropdownValue));
                                        });
                                        print(listOfQuestions[0].title);
                                        Navigator.pop(context);
                                      },
                                      child: Text("Add Question"))
                                ],
                              ),
                            );
                          })
                    },
                child: Icon(Icons.add)),
          ],
        ),
        // create list of questions
        body: ListView.builder(
            itemCount: listOfQuestions.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Text(listOfQuestions[index].title),
                  subtitle: Text("Type: ${listOfQuestions[index].type}"));
            }));
  }
}
