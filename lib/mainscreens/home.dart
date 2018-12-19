import 'package:cloud_functions/cloud_functions.dart';
import 'package:downtube/handlers/cloudfunc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    CloudFunctions.instance.call(functionName: 'helloWorld').then((val){
      print(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/logo.png'), fit: BoxFit.contain),
                    ),
                  ),
                  Text("DownTube", style: TextStyle(color: Colors.white, fontSize: 25),)
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 0, 0, 1),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20),),
            Divider(),
            Container(
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20),
                          child: Text("Home", style: TextStyle(fontSize: 18),)),
                      Padding(padding: EdgeInsets.only(right: 20),
                          child: Icon(Icons.home),),

                    ],
                  )
                )
            ),
            Divider(),
            Container(
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20),
                          child: Text("Downloads", style: TextStyle(fontSize: 18),)),
                      Padding(padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.file_download),),

                    ],
                  )
                )
            ),
            Divider(),
            Container(
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 20),
                          child: Text("About", style: TextStyle(fontSize: 18),)),
                      Padding(padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.sentiment_very_satisfied),),

                    ],
                  )
                )
            ),
            Divider(),

          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 6),
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            Text("DownTube")
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[900],
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 15),
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: TextField(
                  cursorColor: Colors.red,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Please enter a youtube url or a search term'
                  ),
                ),
              )
            ),
            InkWell(
              highlightColor: Colors.red[400],
              onTap: (){

              },
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 0, 0, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text("Download", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}