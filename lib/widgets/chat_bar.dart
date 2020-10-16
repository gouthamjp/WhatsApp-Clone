import 'package:flutter/material.dart';
import '../screen/dm_screen.dart';
class ChatBar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(   context,
    MaterialPageRoute(builder: (context) => DmScreen()),);
      },
          child: Row(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.grey[100],
              ),
              backgroundColor: Colors.grey[500],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.grey[500],
            ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(4),
                  child: Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'Last Message',
                    style: TextStyle(fontSize: 12,color: Colors.grey[400]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
