import 'package:codestorm_hackathon/Screen2.dart';
import 'package:codestorm_hackathon/screens/Homepage.dart';
import 'package:codestorm_hackathon/screens/create_post.dart';
import "package:flutter/material.dart";
import '../screens/cards_page.dart';
import '../screens/post_page.dart';
import 'Givefeedback.dart';
import 'emp_com.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'Index 0: Home',
    //   style: optionStyle,
    // ),
    Homepage(),
    CardPage(),
    CreatePostPage(),
    PostPage(),
        CardPage(),
    RatingPage(),
    RatingPage(),
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
            const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green, 
            ),

            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            accountName: Text(
              "Laksh Doshi",
              style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic),
            ),
            accountEmail: Text("lakshd1999@gmail.com",style: TextStyle(fontSize: 22),),
            ),
            // child:Text('Select your Shows',style: TextStyle(color:Colors.greenAccent,fontSize: 22,),),
              ),

              ListTile(
                title: const Text('Home page'),
                leading: const Icon(Icons.home),
                onTap: () {
                  setState(() {   
                    setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => 
                    const Dashboard()));
                  });   
                  });
                },
              ),
              ListTile(
                title:Text('Abous Us'),
                leading: Icon(Icons.adb_outlined),
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
                title: Text('Contact Us'),
                leading: Icon(Icons.contact_emergency),
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
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback,color: Colors.black),
            label: 'Give Feedback',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add,color: Colors.black),
            label: 'Write Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed,color:Colors.black,),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback,color:Colors.black,),
            label: 'Complain',
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
