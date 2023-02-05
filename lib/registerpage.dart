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

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // form
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  //text controllers
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pwd = TextEditingController();

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
                //Name Text field
                padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
                child: TextFormField(
                  controller: _name,
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
                child: TextFormField(
                  controller: _email,
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
                child: TextFormField(
                  controller: _pwd,
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
                //Register Button
                padding: const EdgeInsets.all(40),
                child: RaisedButton(
                  color: Colors.white,
                  child:
                      Text('Register', style: TextStyle(color: Colors.black)),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 2)),
                  onPressed: () {
                    // Navigator to the next page.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          // Builder for the nextpage
                          // class's constructor.
                          builder: (context) => LoginPage(
                                // Date as arguments to
                                // send to next page.
                                email: _email.text,
                                pwd: _pwd.text,
                              )),
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
