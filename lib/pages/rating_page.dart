// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/rating.dart';


class RatingPage extends StatefulWidget {

  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {

  handleSubmit() {
    // logic to save data
  }

  bool light1 = true;
  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            // AppBar takes a Text Widget
            // in it's title parameter
            title: const Text('Rating Page'),
          ),
          body: Column(children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Rate Managment",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Rating(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Rate Guest Speaker",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Rating(),
            SizedBox(
              height: 20,
            ),
            // Text("Enter Feedback",style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                minLines: 8,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                    labelText: 'Feedback',
                    hintText: "Enter Feedback"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    "Anonymous",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Switch(
                    thumbIcon: thumbIcon,
                    value: light1,
                    onChanged: (bool value) {
                      setState(() {
                        light1 = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: handleSubmit, child: Text("Submit Feedback"))
          ]),
        );

  }
}