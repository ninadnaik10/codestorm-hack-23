
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
 
import '../models/user.dart';
// import '../provider/gsignup.dart';
import '../provider/user_provider.dart';

export 'package:google_sign_in/google_sign_in.dart' show GoogleSignIn;
export 'gsignup_page.dart'; // Export this file to access _googleSignIn

class GSignUpPage extends StatelessWidget {
  GSignUpPage({super.key});

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  @override
  Widget build(BuildContext context) {

    Future<void> _handleSignIn() async {
      try {
        await _googleSignIn.signIn();
        if (_googleSignIn.currentUser != null) {
          print("Hell");
        //   final userProvider =
        //       Provider.of<UserProvider>(context, listen: false);
        //   userProvider.setUser(User(
        //       name: _googleSignIn.currentUser!.displayName ?? "",
        //       email: _googleSignIn.currentUser!.email,
        //       id: _googleSignIn.currentUser!.id));
        // }
        // ;
      }} catch (error) {
        print(error);
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 270,
              // width: 400,
              color: Colors.deepPurple,
              child: const Center(
                  child: Text(
                "SURVEY APPLICATION",
                style: TextStyle(fontSize: 25, color: Colors.greenAccent),
              )),
            ),

            const SizedBox(height: 20),

            const Text(
              "    Signup Page:",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      _handleSignIn();
                      if (_googleSignIn.currentUser != null) {
                        Navigator.pushNamed(context, '/registration-form');
                      }
                    },
                    child: const Text(
                      "Signup Using Google",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute
                      //       (builder: (BuildContext context) =>
                      //       const EmployeRegistrationPage()
                      //       ));
                    },
                    child: const Text(
                      "Signup Using LinkedIn",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )),
              ),
            ),

            const SizedBox(height: 270),

            // const SizedBox(height: 4),

            Row(
              children: [
                Center(
                    child: CupertinoButton(
                        child: const Text(
                          "            Terms Of Service",
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {})),
                CupertinoButton(
                    child: const Text(
                      "Privacy Policy",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
