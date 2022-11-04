import 'package:flutter/material.dart';
import 'package:myreflectly/constants.dart';
import 'package:myreflectly/home.dart';
import 'package:myreflectly/themescreen.dart';

class name extends StatefulWidget {
  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    TextEditingController tc = TextEditingController();
    String tx = 'default text';
    void displaytext() {
      setState(() {
        tx = tc.text;
      });
      print(tx);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(gradient: grad),
        child: Column(children: [
          SizedBox(height: 60),
          Row(children: [
            BackButton(
                color: Colors.grey[300],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                }),
            Hero(
              tag: 'dash',
              child: Container(
                  width: w * 0.75,
                  height: 70,
                  child: Image.asset('assets/vanakkam.gif')),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Text(
            'So nice to meet you! What do ',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          )),
          Container(
              child: Text(
            'your friends call you?',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          )),
          Spacer(flex: 2),
          Container(
            width: w * 0.7,
            child: TextField(
                onSubmitted: (text) {
                  displaytext();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => themes(
                                Name: tx,
                              )));
                },
                controller: tc,
                buildCounter: (BuildContext context,
                    {currentLength = 0, maxLength, isFocused = true}) {
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Text(
                        ' $currentLength / $maxLength ',
                        style: TextStyle(fontSize: 13.5, color: primaryc),
                      ));
                },
                style: TextStyle(color: Colors.pink[50], fontSize: 20.0),
                cursorColor: Color.fromRGBO(246, 114, 115, 2),
                textAlign: TextAlign.center,
                maxLength: 20,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(242, 87, 109, 0.3),
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.pink[50]),
                  hintText: 'Your nickname...',
                )),
          ),
          Spacer(flex: 3),
          SizedBox(
            width: w * 0.7,
            height: 60,
            child: SubmitButton(
                title: 'CONTINUE',
                onPressed: () {
                  displaytext();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => themes(Name: tx)));
                }),
          ),
          Spacer(),
        ]),
      ),
    );
  }
}
