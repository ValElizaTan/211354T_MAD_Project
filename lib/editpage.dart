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
  final MyData data; //to hold te data passed into this page

  //create a constructor for the page with the data parameter
  EditPage({Key key, this.data}) : super(key: key);
  
  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pwd = TextEditingController();

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
              child: TextField(
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
              //Save Chages Button
              padding: const EdgeInsets.all(40),
              child: RaisedButton(
                color: Colors.white,
                child:
                    Text('Save Chages', style: TextStyle(color: Colors.black)),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 2)),
                onPressed: () {
                // initialize DATA
                MyData data = new MyData(_email.text, _pwd.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePage(data: data)),
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
