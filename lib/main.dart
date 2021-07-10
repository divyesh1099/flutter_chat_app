import 'package:flutter/material.dart';
import 'package:flutter_chat_app/views/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff145C9E),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xff1F1F1F),
      ),
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}