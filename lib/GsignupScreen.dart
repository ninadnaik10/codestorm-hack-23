import 'package:codestorm_hackathon/Registrationpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Google_signupScreen extends StatefulWidget {
  const Google_signupScreen({super.key});

  @override
  State<Google_signupScreen> createState() => _Google_signupScreenState();
}

class _Google_signupScreenState extends State<Google_signupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
          
            Container(
              height: 270,
              width: 400,
              color: Colors.deepPurple,
              child: const Center(child: Text("SURVEY APPLICATION",
              style: TextStyle(fontSize: 25,color: Colors.greenAccent),)),
            ),
      
            const SizedBox(height: 20),
            
      
            const Text(
              "    Signup Page:",
              style: TextStyle(
                fontSize: 20,
              ),),
      
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
                        const EmployeRegistrationPage() ));
                },
                child:const Text("Signup Using Google",
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
                        const EmployeRegistrationPage() ));
                },
                child:const Text("Signup Using LinkedIn",
                style: TextStyle(fontSize: 17,color: Colors.white),) ),
              ),
            ),
      
            const SizedBox(height: 270),
  
      
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