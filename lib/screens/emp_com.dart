import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/rating.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({super.key});

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  TextEditingController _feedbackController = TextEditingController();

  handleSubmit() {
    // Logic to save data
    String feedback = _feedbackController.text;
    // Use 'feedback' as needed for saving data.
  }

  bool anonymous = true;

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
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Rating Page'),
      ),
      body: Column(children: [
        SizedBox(
          height: 30,
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
                value: anonymous,
                onChanged: (bool value) {
                  setState(() {
                    anonymous = value;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Rate Management",
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
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            controller: _feedbackController, // Use the controller here
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
        ElevatedButton(
          onPressed: handleSubmit,
          child: Text("Submit Feedback"),
        )
      ]),
    );
  }
}