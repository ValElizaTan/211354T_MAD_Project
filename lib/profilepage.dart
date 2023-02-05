import 'package:flutter/material.dart';

//Class
import 'model.dart';

//Files
import 'homepage.dart';
import 'editpage.dart';

class ProfilePage extends StatefulWidget {
  String name, email, pwd;
  ProfilePage({this.name, this.email, this.pwd});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Close button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.logout),
                        onPressed: () => Navigator.of(context).pop(
                            MaterialPageRoute(
                                builder: (context) => HomePage()))),
                  ],
                ),
              ),
              Container(
                //Profile text
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
                  keyboardType: TextInputType.visiblePassword,
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
            ],
          ),
        ),
      ),
    );
  }
}
