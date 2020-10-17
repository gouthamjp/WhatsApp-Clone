import 'package:flutter/material.dart';

class DmScreen extends StatefulWidget {
  @override
  _DmScreenState createState() => _DmScreenState();
}

class _DmScreenState extends State<DmScreen> {
  TextEditingController control;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text("Name"),
        backgroundColor: Color.fromRGBO(7, 94, 84, 10),
        actions: [
          Icon(Icons.videocam),
          SizedBox(width: 20),
          Icon(Icons.phone),
          DropdownButtonHideUnderline(
            child: DropdownButton(
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onChanged: (String a) {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(

            children: [
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.75,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Type a message',
                  icon: Icon(Icons.insert_emoticon),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
