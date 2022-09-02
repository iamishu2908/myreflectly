
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class themes extends StatefulWidget {
  final String Name;


  const themes({Key? key, required this.Name,}) : super(key: key);

  @override
  State<themes> createState() => _themesState();
}

class _themesState extends State<themes> {


  int i = 0;
  var gradlst = [gradyellow, gradorange, gradblue, gradpurple,gradpink,gradblack];
  var clrlst = [Colors.yellow,Colors.orange,Colors.blue,Colors.purple,Colors.pink,Colors.black];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    void changecolour() {
      setState(() {
        grad=gradlst[i];
        primaryc = clrlst[i];
      });
      print('worked');
    }


    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(gradient: grad),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            SizedBox(height: 60),
            Row(children: [
              BackButton(
                  color: Colors.grey[300],
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Hero(
                tag: 'dash',
                child: Container(
                    width: w * 0.75,
                    height: 70,
                    child: Image.asset('assets/img1.jpeg')),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
                child: Text(
              'Hey ${widget.Name} !',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )),
            Container(
                child: Text(
              'Choose your favourite theme !',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )),
            SizedBox(
              height: 60,
            ),
            Container(color: Colors.transparent,
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 125,
                  ),
                  Container(
                      width: 125,
                      child: Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 8.0,
                                  primary: Colors.yellow,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        width: 4.2, color: Colors.white),
                                  )),
                              onPressed: () {
                                i = 0;
                                changecolour();
                              },
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                              )))),
                  Container(
                      width: 125,
                      child: Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 8.0,
                                  primary: Colors.orange,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        width: 4.2, color: Colors.white),
                                  )),
                              onPressed: () {
                                i = 1;
                                changecolour();
                              },
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                              )))),
                  Container(
                      width: 125,
                      child: Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 8.0,
                                  primary: Colors.blue,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        width: 4.2, color: Colors.white),
                                  )),
                              onPressed: () {
                                i = 2;
                                changecolour();
                              },
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                              )))),
                  Container(
                      width: 125,
                      child: Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 8.0,
                                  primary: Colors.purple,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        width: 4.2, color: Colors.white),
                                  )),
                              onPressed: () {
                                i = 3;
                                changecolour();
                              },
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                              )))),

                  Container(
                      width: 125,
                      child: Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 8.0,
                                  primary: Colors.pink,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        width: 4.2, color: Colors.white),
                                  )),
                              onPressed: () {
                                i = 4;
                                changecolour();
                              },
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                              )))),
                  Container(
                      width: 125,
                      child: Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 8.0,
                                  primary: Colors.black,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                        width: 4.2, color: Colors.white),
                                  )),
                              onPressed: () {
                                i = 5;
                                changecolour();
                              },
                              child: SizedBox(
                                height: 80.0,
                                width: 80.0,
                              )))),

                ],
              ),
            ),
            Container(
              width: 450,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: w * 0.7,
                height: 60,
                child: SubmitButton(title: 'CONTINUE', onPressed: () {}),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
