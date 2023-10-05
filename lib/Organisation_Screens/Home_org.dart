import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home_company extends StatefulWidget {
  const Home_company({super.key});

  @override
  State<Home_company> createState() => _Home_companyState();
}

class _Home_companyState extends State<Home_company> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 5,),

         Image.asset('assets/images/graph.png',height: 200,),

          Card(
            margin: EdgeInsets.all(10),
            
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   const Text('Satisfactory Survey Data ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                  
                   const Text('Description : Data of the Satisfaction Survey ',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                  const SizedBox(height: 10,),

                  Row(
                    children: [
                      
                      const SizedBox(width: 100,),
                      ElevatedButton(onPressed: (){

                      }, child: Text('Analyze Survey Data'))
                    ],
                  ),
                 
                  
                ],
              ),
            ),
          ),

          Card(
            margin: EdgeInsets.all(10),
            
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   const Text('Satisfactory feedback Data ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                  
                   const Text('Description : Data of the Satisfaction Survey ',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                  const SizedBox(height: 10,),

                  Row(
                    children: [
                      
                      const SizedBox(width: 100,),
                      ElevatedButton(onPressed: (){

                      }, child: Text('Analyze feedback Data'))
                    ],
                  ),
                 
                  
                ],
              ),
            ),
          ),

          Card(
            margin: EdgeInsets.all(10),
            
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   const Text('Pulse Survey Data ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                  
                   const Text('Description : Data of the Pulse Survey ',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                  const SizedBox(height: 10,),

                  Row(
                    children: [
                      
                      const SizedBox(width: 100,),
                      ElevatedButton(onPressed: (){

                      }, child: Text('Analyze Survey Data'))
                    ],
                  ),
                 
                  
                ],
              ),
            ),
          ),

          

          
        ],
      ),
    );
  }
}