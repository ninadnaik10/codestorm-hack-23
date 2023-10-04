import 'package:codestorm_hackathon/GsignupScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Registrationpage.dart';

class Screen2 extends StatefulWidget 
{
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> 
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
          
            Container(
              height: 100,
              width: 400,
              color: Colors.deepPurple,
              child: const Center(child: Text("ACCENTURE SURVEY APP",
              style: TextStyle(fontSize: 25,color: Colors.greenAccent),)),
            ),
      
            const SizedBox(height: 40),
            
            Center(child: Image.asset('assets/images/signup.png',height: 200,)),

            const SizedBox(height: 20,),
            const Text(
              "    Choose Your Signup :",
              style: TextStyle(
                fontSize: 20,
              ),),
      
              const SizedBox(height: 30),
      
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
                        const Google_signupScreen() ));
                },
                child:const Text("Employee Signup",
                style: TextStyle(fontSize: 17,color:Colors.white),) ),
              ),
            ),
      
            const SizedBox(height: 20),

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
                        const Google_signupScreen() ));
                },
                child:const Text("Organization/Company Signup",
                style: TextStyle(fontSize: 17,color: Colors.white),) ),
              ),
            ),
      
            const SizedBox(height: 210),
  
      
            // const SizedBox(height: 4),
      
             Row(
               children: [
                 Center(child: CupertinoButton(child: const Text("            Terms Of Service",style: TextStyle(fontSize: 18),), 
                    onPressed:(){
                       
                    } )),
      
                  CupertinoButton(child: const Text("Privacy Policy",style: TextStyle(fontSize: 18),), 
                    onPressed:(){
                       
                    } ),
               ],
             ),
      
          ],
        ),
      ),

    );;
  }
}