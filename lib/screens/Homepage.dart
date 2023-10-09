import 'package:codestorm_hackathon/screens/rating.dart';
import 'package:codestorm_hackathon/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 5,),

         Image.asset('assets/images/accenture.jpeg',height: 200,),

        //  Container(
        //       height: 150 ,
        //       child: ListView.separated(
        //       scrollDirection: Axis.horizontal,
        //       itemBuilder: (context,index) =>Buildcard(),
        //       separatorBuilder: (context, _) => SizedBox(width: 10,),
        //       itemCount: 3)),

          Card(
            margin: EdgeInsets.all(10),
            
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   const Text('Satisfaction Surveys ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                  
                   const Text('Description : We want you to fill this Survey. This Survey will help us Understand what things can be not going right in the company.',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                  const SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Last Date: 7/10/2023'),
                      const SizedBox(width: 50,),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute
                        (builder: (BuildContext context) =>
                        const RatingPage() ));
                      }, child: Text('Begin Survey'))
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
                   const Text('Pulse Surveys ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                   const Text('Description : This survey is essentially a check-in, providing a pulse check on topics such as employee satisfaction, job role, communication, relationships, and work environment.',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),

                  const SizedBox(height: 10,),

                   Row(
                    children: [
                      Text('Last Date: 7/10/2023'),
                      const SizedBox(width: 50,),
                      ElevatedButton(onPressed: (){

                      }, child: Text('Begin Survey'))
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
                   const Text('Give Your Feedback ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),

                   const Text('Description : We want you to fill this feedback form as quick as possible.',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),

                  const SizedBox(height: 10,),

                  Row(
                    children: [
                      Text('Last Date: 7/10/2023'),
                      const SizedBox(width: 50,),
                      ElevatedButton(onPressed: (){

                      }, child: Text('Give Feedback'))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
// Widget Buildcard(
  
// ) => Container(
//   margin: EdgeInsets.only(left: 20,bottom: 10),
//                     decoration: BoxDecoration
//                 (
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color.fromARGB(255, 222, 185, 197),
//                 ),
//                   width: 350,
//                   child: Column(
//                     children: [
//                       Expanded(
//                       child: AspectRatio(
//                         aspectRatio: 4/2,
//                         child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        
//                         ),  
//                     ),
//                   )]
//                   ),
// );

// class CardItem {
// }