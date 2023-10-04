import 'dart:math';

import 'package:codestorm_hackathon/models/card_model.dart';
import 'package:codestorm_hackathon/pages/cards_page.dart';
import 'package:codestorm_hackathon/pages/emoployee_complaint.dart';
import 'package:codestorm_hackathon/pages/post_page.dart';
import 'package:codestorm_hackathon/pages/rating_page.dart';
import 'package:codestorm_hackathon/widgets/rating.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(
        theme: ThemeData(useMaterial3: true),

        // Scaffold Widget
        home:PostPage());
  }

}

// class RadioExample extends StatefulWidget {
//   const RadioExample({super.key});

//   @override
//   State<RadioExample> createState() => _RadioExampleState();
// }

// class _RadioExampleState extends State<RadioExample> {
//   String radioButtonItem = 'ONE';

//   // Group Value for Radio Button.
//   int id = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Radio(
//               value: 1,
//               groupValue: id,
//               onChanged: (val) {
//                 setState(() {
//                   radioButtonItem = 'ONE';
//                   id = 1;
//                 });
//               },
//             ),
//             Text(
//               'Anonymous',
//               style: new TextStyle(fontSize: 17.0),
//             ),
//             Radio(
//               value: 2,
//               groupValue: id,
//               onChanged: (val) {
//                 setState(() {
//                   radioButtonItem = 'TWO';
//                   id = 2;
//                 });
//               },
//             ),
//             Text(
//               'Named',
//               style: new TextStyle(
//                 fontSize: 17.0,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
