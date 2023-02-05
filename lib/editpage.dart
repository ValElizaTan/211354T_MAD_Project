import 'package:flutter/material.dart';
//Class
import 'model.dart';

//Files
import 'profilepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      home: EditPage(),
    );
  }
}

class EditPage extends StatefulWidget {
  String name, email, pwd;
  EditPage({this.name, this.email, this.pwd});
  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();

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
                'Edit Profile',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            Container(
              //Profile Image
              padding: const EdgeInsets.all(20),
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('images/businessman.png'),
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
              //Save Chages Button
              padding: const EdgeInsets.all(40),
              child: RaisedButton(
                color: Colors.white,
                child:
                    Text('Save Chages', style: TextStyle(color: Colors.black)),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 2)),
                onPressed: () {
                  {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          // Builder for the nextpage
                          // class's constructor.
                          builder: (context) => ProfilePage(
                                // Date as arguments to
                                // send to next page.
                                name: name.text,
                                email: email.text,
                                pwd: pwd.text,
                              )),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
