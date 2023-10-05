import 'package:codestorm_hackathon/Organisation_Screens/Home_org.dart';
import 'package:codestorm_hackathon/Organisation_Screens/org_registration.dart';
import 'package:codestorm_hackathon/Organisation_Screens/surveyDesign.dart';
import 'package:codestorm_hackathon/Screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Organisation_HomeScreen extends StatefulWidget {
  const Organisation_HomeScreen({super.key});

  @override
  State<Organisation_HomeScreen> createState() => _Organisation_HomeScreenState();
}

class _Organisation_HomeScreenState extends State<Organisation_HomeScreen> 
{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    
    Home_company(),
    SurveyDesign(),
   Text(
      'Index 2: Declare Awards Ceremony',
      style: optionStyle,
    ),
    Text(
      'Index 3: Declare Events Schedule',
      style: optionStyle,
    ),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(child: const Text('Accenture',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,letterSpacing: 1),)),
        actions: [IconButton(
          icon: const Icon(Icons.person,color: Colors.black,),
          tooltip: 'Profile',
          onPressed: (){
            Navigator.pushNamed(context, '/profile');
          },
        ),]
      ),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            
              const SizedBox(height: 50,),
              ListTile(
                title: const Text('Home page'),
                leading: const Icon(Icons.home),
                onTap: () {
                  setState(() {   
                    setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => 
                    const Organisation_HomeScreen()));
                  });   
                  });
                },
              ),
              ListTile(
                title:Text('Company Vision And Mission'),
                leading: Icon(Icons.visibility),
                onTap: () {
                  
                },
              ),
              ListTile(
                title: Text('Your Account'),
                leading: Icon(Icons.person),
                onTap: () {
                  setState(() {
                    
                  });
                },
              ),
              
              ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.logout_sharp),
                onTap: () {
                  setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => 
                    const Screen2()));
                  });
                },
              ),
          ],
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.green,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle,color: Colors.green),
            label: 'Create Survey',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_horizontal_select,color: Colors.green),
            label: 'Declare Awards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event,color:Colors.green,),
            label: 'Declare Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color:Colors.green,),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}