import 'package:flutter/material.dart';
import 'package:flutter_chat_app/helper/authenticate.dart';
import 'package:flutter_chat_app/services/auth.dart';
import 'package:flutter_chat_app/views/search.dart';
class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  AuthMethods authMethods = new AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
        actions: [
          GestureDetector(
            onTap: (){
              authMethods.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Authenticate()));
            },
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.logout))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
        },
        child: Icon(Icons.search) ,
      ),
    );
  }
}
