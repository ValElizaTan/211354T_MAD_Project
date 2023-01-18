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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController pwd = TextEditingController();

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
                'Login',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            Container(
              //Profile Image
              padding: const EdgeInsets.all(20),
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('images/Profile-Male.png'),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              //Email Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black87),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[700], width: 3),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red[800], width: 3),
                  ),
                ),
              ),
            ),
            Padding(
              //Password Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: TextField(
                controller: pwd,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black87),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[700], width: 3),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red[800], width: 3),
                  ),
                ),
              ),
            ),
            Padding(
              //Login Button
              padding: const EdgeInsets.all(40),
              child: RaisedButton(
                color: Colors.white,
                child: Text('Login', style: TextStyle(color: Colors.black)),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 2)),
                onPressed: () {
                  // initialize DATA
                  MyData data = MyData(email.text, pwd.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(data: data)),
                  );
                },
              ),
            ),
            Container(
              //Login text
              padding: const EdgeInsets.all(10),
              child: Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Padding(
              //Login Button
              padding: const EdgeInsets.all(10),
              child: RaisedButton(
                color: Colors.white,
                child: Text('Sign Up', style: TextStyle(color: Colors.black)),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 2)),
                onPressed: () {
                  // initialize DATA
                  MyData data = MyData(email.text, pwd.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
