import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
 
import '../models/user.dart';
import '../provider/user_provider.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController empId = TextEditingController();
  final TextEditingController contact = TextEditingController();

    final db = FirebaseFirestore.instance;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final userProvider = Provider.of<UserProvider>(context);
// User? user = userProvider.user;
// name.text = user!.name;
// email.text = user.email;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          tooltip: 'Back',
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "    Just a step away",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Full name*",
                  border: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: empId,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.indeterminate_check_box),
                  hintText: "Employee id*",
                  border: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                // controller: position,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.post_add),
                  hintText: "Position in Company*",
                  border: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2_outlined),
                  hintText: "Organization Id*",
                  border: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Email*",
                  border: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 220),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      // db.collection('users').doc(user.id).set({
                      //   'name': user.name,
                      //   'email': user.email,
                      //   'empId': empId.text,
                      // }
                      // );
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    child: const Text(
                      "Proceed",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
