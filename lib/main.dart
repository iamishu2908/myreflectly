import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Reflectly App :)',
      theme: ThemeData(
        fontFamily: 'ProductSans',
        //primarySwatch: Colors.pink,
        //accentColor: Colors.pinkAccent,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void initState(){
    super.initState();
    Timer(Duration(seconds :4),
        ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home())));
  }
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h/5,
      width: w/3,
      color : Colors.white,
      child: Image.asset('assets/vanakkam.gif'),
    );
  }
}

