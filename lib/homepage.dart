import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//Class
import 'model.dart';

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
            padding: const EdgeInsets.all(20),
            child: Text(
              'Select Destination',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.only(left:20, right: 20),
                    child: Text(
                      "You have reached",
                      style: TextStyle(fontSize: 35, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Start Tracking',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
