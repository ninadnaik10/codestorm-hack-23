// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/rating.dart';

class EmployeeComplaintPage extends StatefulWidget {
  const EmployeeComplaintPage({super.key});

  @override
  State<EmployeeComplaintPage> createState() => _EmployeeComplaintPageState();
}

class _EmployeeComplaintPageState extends State<EmployeeComplaintPage> {
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              minLines: 1,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  labelText: 'Type of Complain',
                  hintText: "Type of Complain"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              minLines: 1,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  labelText: 'Complainee',
                  hintText: "Complainee"),
            ),
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
                  labelText: 'Description of Complain',
                  hintText: "Enter Description"),
            ),
          ),
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
                  labelText: 'Resolution Desired',
                  hintText: "Enter resolution"),
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
                  "Have you given \nfeedback to the \nComplainee",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 90,
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
              onPressed: handleSubmit, child: Text("Report Complaint"))
        ]),
      ),
    );
  }
}
