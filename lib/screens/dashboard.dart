import 'package:codestorm_hackathon/screens/Homepage.dart';
import "package:flutter/material.dart";
import 'Givefeedback.dart';

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
    GiveFeedback(),
   Text(
      'Index 0: Feedback received',
      style: optionStyle,
    ),
    Text(
      'Index 0: Complaint Box',
      style: optionStyle,
    ),
    Text(
      'Index 0: Settings',
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
        title: Center(child: const Text('Godrej',style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,letterSpacing: 1),)),
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
            icon: Icon(Icons.feedback,color: Colors.green),
            label: 'Give Feedback',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback_sharp,color: Colors.green),
            label: 'Receive feedback',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare,color:Colors.green,),
            label: 'Lets Complain',
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
