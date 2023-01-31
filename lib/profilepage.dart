import 'package:flutter/material.dart';

//Class
import 'model.dart';

//Files
import 'registerpage.dart';
import 'editpage.dart';

class ProfilePage extends StatefulWidget {
  final MyData data;

  ProfilePage({@required this.data});

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
      body: SingleChildScrollView(
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
            Padding(
              //Name Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(name.text),
              )
            ),
            Padding(
              //Email Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(email.text),
              )
            ),
            Padding(
              //Password Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(pwd.text),
              )
            ),
            Padding(
              //Confirm Password Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
              child: AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(cfmpwd.text),
              )
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
                  MyData data = MyData(email.text, pwd.text, cfmpwd.text);
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage(
                              data: data,
                            )),
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

// if (widget.data.email == "michael@mail.com") ...[
//               SizedBox(height: 50),
//               Text('Welcome, Michael',
//                   style: TextStyle(color: Colors.black, fontSize: 30)),
//               SizedBox(height: 50),
//               CircleAvatar(
//                 radius: 110,
//                 child: CircleAvatar(
//                   radius: 100,
//                   backgroundImage: AssetImage('images/businessman.png'),
//                 ),
//               ),
//               SizedBox(height: 30),
//               RaisedButton(
//                 color: Colors.blueAccent,
//                 child: Text('Back', style: TextStyle(color: Colors.white)),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ] else ...[
//               Text('Welcome, Guest',
//                   style: TextStyle(color: Colors.black, fontSize: 30)),
//               SizedBox(height: 50),
//               CircleAvatar(
//                 radius: 110,
//                 child: CircleAvatar(
//                   radius: 100,
//                   backgroundImage: AssetImage('images/women.png'),
//                 ),
//               ),
//               SizedBox(height: 30),
//               RaisedButton(
//                 color: Colors.blueAccent,
//                 child: Text('Back', style: TextStyle(color: Colors.white)),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
