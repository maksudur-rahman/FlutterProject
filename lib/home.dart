
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double _height;

  double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    //Color myColor = Color("0xff000000");
    bool checkBoxValue = false;
    bool radioValue = true;
    return Container(
      height: _height,
      width: _width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5),
        color: Colors.cyanAccent,
      ),
      child: Column(
        children:  [
          Text(
            "Hellow World",
            style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold
            ),
          ),
          Image.asset(
            "images/person.png",
            height: _height * .05,
            width: _width * .03,

          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/person.png"),
            radius: 10,
            backgroundColor: Colors.blueGrey,
          ),
          Container(
            height: 10,
            width: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Text(
              "Continue",
              textAlign: TextAlign.center,

            )
          ),
          IconButton(
              icon: Icon(Icons.add_call),
              color: Colors.blue,
              onPressed: (){
                debugPrint("Pressed");
              }
          ),
          RaisedButton(
              onPressed: (){

              },
            color: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(
                color: Colors.blueGrey
              ),
            ),
            child: Text(
                "Signup",
              textAlign: TextAlign.center,
            ),
          ),

          GestureDetector(
            onTap: (){

            },
            child: Container(
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Year/month",
                    ),
                  ),
                  IconButton(icon: Icon(Icons.calendar_today), onPressed: null),
                  Checkbox(
                      value: checkBoxValue,
                      onChanged: (bool newValue){
                        setState(
                            (){
                              checkBoxValue = newValue;
                            }
                        );
                  },
                   // activeColor: myColor,
                  ),
                  Radio(
                      value: radioValue,
                      groupValue: radioValue,
                      onChanged: (value) => setState(
                          () => radioValue = value
                      ),
                    activeColor: Colors.red,
                  )
                ],
              ),
            ),
          ),
          Container(

          )
        ],
      ),


    );
  }
}
