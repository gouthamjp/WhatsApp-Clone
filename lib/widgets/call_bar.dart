import 'package:flutter/material.dart';

class CallBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_upward,color:Colors.green),
                      Container(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          'Call Time',
                          style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 150),
                  child: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}


