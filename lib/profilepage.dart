import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//Class
import 'model.dart';

//Files
import 'editpage.dart';
import 'main.dart';

class ProfilePage extends StatelessWidget {
  final MyData data; //to hold te data passed into this page

  //create a constructor for the page with the data parameter
  ProfilePage({Key key, this.data}) : super(key: key);

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
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => NavBar()))),
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
                //Email Text field
                padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
                child: Text(data.email),
              ),
              Padding(
                //Password Text field
                padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
                child: Text(data.pwd),
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
