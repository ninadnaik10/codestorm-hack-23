import 'package:flutter/material.dart';

class ComplaintPage extends StatefulWidget {
  @override
  State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Complaint'),
        ),
        body: ComplaintCard(),
      ),
    );
  }
}

class ComplaintCard extends StatefulWidget {
  @override
  State<ComplaintCard> createState() => _ComplaintCardState();
}

class _ComplaintCardState extends State<ComplaintCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Complainee: Anonymous',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Complaint Description:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0),
            Text(
              'Sanjay Shrivastav has been repeatedly violating company policies related to workplace conduct. His behavior is disruptive and harmful to the team morale. We kindly request that appropriate action be taken to address this issue promptly.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Text(
              'Desired Resolution:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0),
            Text(
              'We hope that the company will conduct a thorough investigation into this matter and take corrective action as necessary to ensure a harmonious workplace environment.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}