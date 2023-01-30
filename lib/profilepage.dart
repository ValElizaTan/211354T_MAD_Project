import 'package:flutter/material.dart';

//Class
import 'model.dart';

//Files
import 'registerpage.dart';
import 'editpage.dart';

class ProfilePage extends StatefulWidget {
  final MyData data;
  bool togglecolour = true;

  ProfilePage({@required this.data});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (widget.data.email == "mike@mail.com") ...[
              SizedBox(height: 50),
              Text('Welcome, Mike',
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              SizedBox(height: 50),
              CircleAvatar(
                backgroundColor:
                    widget.togglecolour ? Colors.blueAccent : Colors.redAccent,
                radius: 110,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/businessman.png'),
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text('Back', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text('Back', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ] else ...[
              Text('Welcome, Guest',
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              SizedBox(height: 50),
              CircleAvatar(
                backgroundColor:
                    widget.togglecolour ? Colors.blueAccent : Colors.redAccent,
                radius: 110,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/women.png'),
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text('Edit', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditPage()),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text('Back', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            // BottomNavigationBar(
            //   items: const <BottomNavigationBarItem>[
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.home),
            //         label: ('Home'),
            //         backgroundColor: Colors.green),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.search),
            //         label: ('Search'),
            //         backgroundColor: Colors.yellow),
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.person),
            //       label: ('Profile'),
            //       backgroundColor: Colors.blue,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
