import 'package:downtube/mainscreens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 0, 0, 1),
        fontFamily: "Oswald"
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    timeDilation = 3; // 1.0 means normal animation speed.

    Future.delayed(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return HomeScreen();
          }
      ));
    });
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(255, 0, 0, 1),
        child: Center(
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/logo.png')),
            ),
          ),
        ),
      )
    );
  }
}