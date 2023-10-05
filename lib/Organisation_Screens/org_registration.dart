import 'package:codestorm_hackathon/Organisation_Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Org_registration extends StatefulWidget {
  const Org_registration({super.key});

  @override
  State<Org_registration> createState() => _Org_registrationState();
}

class _Org_registrationState extends State<Org_registration> {
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
              "    The Company Portal",
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
                              hintText: "Position In Company*",
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
                              hintText: "Company Identification Number*",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                              prefixIcon: Icon(Icons.location_city),
                              hintText: "Branch Address*",
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(),
                            ),
              ),
            ),
      
            const SizedBox(height: 250),
      
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
                        const Organisation_HomeScreen() ));
                },
                child:const Text("Proceed",
                style: TextStyle(fontSize: 17,color: Colors.white),) ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}