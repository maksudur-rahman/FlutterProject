
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "Second Page",
            style: TextStyle(),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey,
          actions: [
            IconButton(icon: Icon(Icons.notifications), onPressed: (){

            })
          ],
        ),
      ),
    );
  }
}
