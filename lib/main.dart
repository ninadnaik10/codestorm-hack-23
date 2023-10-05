import 'dart:math';

import 'package:codestorm_hackathon/models/card_model.dart';
import 'package:codestorm_hackathon/pages/cards_page.dart';
import 'package:codestorm_hackathon/pages/company_complain.dart';
import 'package:codestorm_hackathon/pages/create_post_page.dart';
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
        home:CreatePostPage());
  }
}