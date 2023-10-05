import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codestorm_hackathon/provider/user_provider.dart';
import 'package:codestorm_hackathon/screens/Registrationpage.dart';
import 'package:codestorm_hackathon/screens/create_survey.dart';
import 'package:codestorm_hackathon/screens/dashboard.dart';
import 'package:codestorm_hackathon/screens/gsignup_page.dart';
import 'package:codestorm_hackathon/screens/laksh_reg.dart';
import 'package:codestorm_hackathon/screens/rating.dart';
import 'package:codestorm_hackathon/screens/registration_form.dart';
import 'package:codestorm_hackathon/screens/survey_design.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
 
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    // MultiProvider(
    //   providers: [ChangeNotifierProvider(
    //     create: (context) {
    //       UserProvider();
    //       // GoogleSignInProvider();
    //     },
    //   ),],
    //           child: MyApp(),
    // ),
    MyApp(),
  );
  FirebaseUIAuth.configureProviders([EmailAuthProvider()]);
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
  ],
);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.purple),
      initialRoute: FirebaseAuth.instance.currentUser == null
          ? '/register'
          : '/dashboard',
      routes: {
        // '/sign-in': (context) {
        //   return SignInScreen(
        //     providers: [EmailAuthProvider()],
        //     actions: [
        //       AuthStateChangeAction<SignedIn>((context, state) {
        //         db.collection('users').doc(state.user!.uid).set({
        //           'name': state.user!.displayName,
        //           'email': state.user!.email,
        //         });
        //         Navigator.pushReplacementNamed(context, '/profile');
        //       }),
        //     ],
        //   );
        // },

        '/register': (context) {
          return Screen2();
        },
        '/registration-form': (context) {
          return RegistrationForm();
        },
        '/dashboard': (context) {
          return Dashboard();
        },
        '/survey': (context) {
          return SurveyDesign();
        },
        // '/survey-rating': (context){
        //   return RatingPage(questions: ,);
        // },
        '/profile': (context) {
          return ProfileScreen(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: Text("Go to Dashboard"))
            ],
            providers: [EmailAuthProvider()],
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, '/register');
              }),
            ],
          );
        },
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
