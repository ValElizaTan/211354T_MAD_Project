import 'package:flutter/material.dart';
//Class
import 'model.dart';

//Files
import 'registerpage.dart';
import 'profilepage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // form
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  //text cotnroller
  final TextEditingController email = TextEditingController();
  final TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
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
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (data) {
                    //Validator
                  },
                  validator: (data) {
                    if (data.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(data)) {
                      return 'Please enter a valid email!';
                    }
                    return null;
                  },
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
                child: TextFormField(
                  controller: pwd,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (data) {
                    //Validator
                  },
                  validator: (data) {
                    if (data.isEmpty ||
                        !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>')
                            .hasMatch(data)) {
                      return 'Please enter a valid Password';
                    }
                    return null;
                  },
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
                    MyData data = new MyData(email.text, pwd.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage(data: data)),
                    );
                  },
                ),
              ),
              Container(
                //Create Account text
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              Padding(
                //Signup Button
                padding: const EdgeInsets.all(10),
                child: RaisedButton(
                  color: Colors.white,
                  child: Text('Sign Up', style: TextStyle(color: Colors.black)),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 2)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
