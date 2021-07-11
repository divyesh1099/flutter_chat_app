import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/views/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(child: Text("Something Went Wrong"));
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primaryColor: Color(0xff145C9E),
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Color(0xff1F1F1F),
            ),
            debugShowCheckedModeBanner: false,
            home: SignUp(),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primaryColor: Color(0xff145C9E),
    //     primarySwatch: Colors.blue,
    //     scaffoldBackgroundColor: Color(0xff1F1F1F),
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home: SignUp(),
    // );
  }
}
