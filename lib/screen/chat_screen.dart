import 'package:flutter/material.dart';

import '../widgets/chat_bar.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
     children: <Widget>[
        ChatBar(),
        ChatBar(),
        ChatBar(),
        ChatBar(),
        ChatBar(),
        ChatBar(),
        ChatBar(),
        ChatBar(),
        ChatBar(),
      ]),
      floatingActionButton: FloatingActionButton(onPressed: null,child:Icon(Icons.message)),
    );
  }
}
