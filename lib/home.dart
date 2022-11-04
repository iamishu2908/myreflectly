import 'package:flutter/material.dart';
import 'package:myreflectly/constants.dart';
import 'namescreen/namescreen.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //getter functions for usign height and weight in other classes
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: grad),
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 2),
              Hero(
                tag: 'dash',
                child: Container(
                    height: 90, child: Image.asset('assets/vanakkam.gif')),
              ),
              SizedBox(height: 20),
              Container(
                  child: Text(
                'Hi there,',
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              )),
              Container(
                  child: Text(
                'I\'m Reflectly',
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              )),
              SizedBox(height: 30.0),
              Container(
                child: Text(
                  'Your new personal',
                  style: TextStyle(color: Colors.pink[100], fontSize: 20.0),
                ),
              ),
              Container(
                  child: Text(
                'self-care companion',
                style: TextStyle(color: Colors.pink[100], fontSize: 20.0),
              )),
              Spacer(flex: 3),
              SizedBox(
                width: w * 0.7,
                height: 60,
                child: SubmitButton(
                    title: 'HI, REFLECTLY!',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => name()),
                      );
                    }),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        primary: Colors.blueGrey),
                    onPressed: () {},
                    child: Text(' I ALREADY HAVE AN ACCOUNT ',
                        style:
                            TextStyle(color: Colors.pink[100], fontSize: 13))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
