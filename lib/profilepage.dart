import 'package:flutter/material.dart';
import 'package:project/loginpage.dart';

//Class
import 'model.dart';

//Files
import 'editpage.dart';
import 'aboutus.dart';

class ProfilePage extends StatefulWidget {
  final MyData data;
  ProfilePage({this.data});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController pwd = TextEditingController();
  final TextEditingController cfmpwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                //Register text
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Profile',
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
              if (widget.data.email == "mike@mail.com") ...[
                SizedBox(height: 50),
                Text('Welcome, Mike',
                    style: TextStyle(color: Colors.black, fontSize: 30)),
              ] else ...[
                Text('Welcome, Guest',
                    style: TextStyle(color: Colors.black, fontSize: 30)),
                SizedBox(height: 50),
              ],
              Padding(
                //Edit Profile Button
                padding: const EdgeInsets.all(20),
                child: RaisedButton(
                  color: Colors.white,
                  child: Text('Edit Profile',
                      style: TextStyle(color: Colors.black)),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 2)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditPage()),
                    );
                  },
                ),
              ),
              Padding(
                //Edit Profile Button
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  color: Colors.white,
                  child: Text('Login', style: TextStyle(color: Colors.black)),
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
              Padding(
                //Edit Profile Button
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  color: Colors.white,
                  child: Text('About Us', style: TextStyle(color: Colors.black)),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 2)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUsPage()),
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

