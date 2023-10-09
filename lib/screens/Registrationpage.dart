import 'package:codestorm_hackathon/screens/dashboard.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class EmployeRegistrationPage extends StatefulWidget {
  const EmployeRegistrationPage({super.key});

  @override
  State<EmployeRegistrationPage> createState() => _EmployeRegistrationPageState();
}

class _EmployeRegistrationPageState extends State<EmployeRegistrationPage> {
  bool password = false;
  @override
  void initState()
  {
    super.initState();
    password = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            const SizedBox(height:40),
      
            const Text(
              "    Just a step away",
              style: TextStyle(
                fontSize: 20,
              ),),
      
              SizedBox(height: 30),
      
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Full name*",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),
      
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
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
      
            const SizedBox(height: 170),
      
           Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 380,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute
                        (builder: (BuildContext context) =>
                        const Dashboard() ));
                },
                child:const Text("Let's Start",
                style: TextStyle(fontSize: 17,color: Colors.white),) ),
              ),
            ),
            
          ],
        ),
      ),
    );
}
}