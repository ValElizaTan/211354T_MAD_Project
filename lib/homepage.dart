import 'package:flutter/material.dart';
//Class
import 'model.dart';

//Files
import 'main.dart';
import 'startpage.dart';
import 'endpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(50),
            child: Text(
              'Select Destination',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //Start Button
                    padding: const EdgeInsets.all(20),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text('Start Destination',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.w300)),
                      padding: const EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 2)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StartPage()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //End Button
                    padding: const EdgeInsets.only(top:20, bottom:50),
                    child: RaisedButton(
                      color: Colors.white,
                      child: Text('End Destination',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              fontWeight: FontWeight.w300)),
                      padding: const EdgeInsets.all(25),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 2)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EndPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: const Text(
              'Start Tracking',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
            ),
            onTap:() {
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NavBar()),
                        );
            },
          ),
        ],
      ),
    );
  }
}
