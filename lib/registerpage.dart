import 'package:flutter/material.dart';
//Class
import 'model.dart';

//Files
import 'loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pwd = TextEditingController();
  final TextEditingController cfmpwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              //Register text
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.all(5),
              child: Text(
                'Register',
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
                controller: name,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Name',
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
              //Confirm Password Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: TextField(
                controller: cfmpwd,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
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
              //Register Button
              padding: const EdgeInsets.all(40),
              child: RaisedButton(
                color: Colors.white,
                child: Text('Register', style: TextStyle(color: Colors.black)),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 2)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
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
