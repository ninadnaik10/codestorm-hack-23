import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/rating.dart';

class EmployeeComplaintPage extends StatefulWidget {
  const EmployeeComplaintPage({super.key});

  @override
  State<EmployeeComplaintPage> createState() => _EmployeeComplaintPageState();
}

class _EmployeeComplaintPageState extends State<EmployeeComplaintPage> {
  TextEditingController _typeOfComplaintController = TextEditingController();
  TextEditingController _respondentController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _resolutionController = TextEditingController();

  handleSubmit() {
    // Logic to save data
    String typeOfComplaint = _typeOfComplaintController.text;
    String respondent = _respondentController.text;
    String description = _descriptionController.text;
    String resolution = _resolutionController.text;
    // Use these variables as needed for saving data.
  }

  bool anonymous = true;
  bool feedbackGiven = true;

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
    _typeOfComplaintController.dispose();
    _respondentController.dispose();
    _descriptionController.dispose();
    _resolutionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Complaint Page'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              controller: _typeOfComplaintController, // Use the controller here
              minLines: 1,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  labelText: 'Type of Complaint',
                  hintText: "Type of Complaint"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              controller: _respondentController, // Use the controller here
              minLines: 1,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  labelText: 'Respondent',
                  hintText: "The person you want to complain about"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              controller: _descriptionController, // Use the controller here
              minLines: 8,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  labelText: 'Description of Complaint',
                  hintText: "Enter Description"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              controller: _resolutionController, // Use the controller here
              minLines: 8,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  labelText: 'Resolution Desired',
                  hintText: "Enter Resolution"),
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
                  "Have you given\nfeedback to the\nComplainee",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 90,
                ),
                Switch(
                  thumbIcon: thumbIcon,
                  value: feedbackGiven,
                  onChanged: (bool value) {
                    setState(() {
                      feedbackGiven = value;
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
            onPressed: handleSubmit,
            child: Text("Report Complaint"),
          ),
        ]),
      ),
    );
  }
}
