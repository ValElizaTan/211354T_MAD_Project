import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//Class
import 'model.dart';

//Files
import 'registerpage.dart';
import 'profilepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              //Login text
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.all(5),
              child: Text(
                'About Us',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 10,
                ),
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('images/bus.png'),
                fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              //Application Info text
              padding: const EdgeInsets.all(15),
              child: Text(
                'Application Info',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Container(
              //Company Info text
              padding: const EdgeInsets.all(15),
              child: Text(
                'Company Info',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Container(
              //Contact Number text
              padding: const EdgeInsets.all(15),
              child: Text(
                'Contact Number',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Container(
              //Email text
              padding: const EdgeInsets.all(15),
              child: Text(
                'Email',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Container(
              //Developer Info text
              padding: const EdgeInsets.all(15),
              child: Text(
                'Developer Info',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
