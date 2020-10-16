import 'package:flutter/material.dart';

import '../widgets/call_bar.dart';
class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:<Widget>[
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
          CallBar(),
        ]
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,child:Icon(Icons.add_call)),
    );
  }
}