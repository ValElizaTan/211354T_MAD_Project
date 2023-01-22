import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//Class
import 'model.dart';

//Files
import 'homepage.dart';
import 'profilepage.dart';
import 'bus.dart';
import 'aboutus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Center(
        // child: Column(
        //   children: <Widget>[
        child: Row(
          children: <Widget>[
            Padding(
              //Search Text field
              padding: const EdgeInsets.only(right: 50, left: 50, top: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[700], width: 3),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red[800], width: 3),
                  ),
                ),
              ),
            ),
            Icon(Icons.search),
          ],
        ),

        //   Padding(
        //     //Search Text field
        //     padding: const EdgeInsets.only(right: 50, left: 50, top: 30),
        //     child: TextField(
        //       keyboardType: TextInputType.emailAddress,
        //       decoration: InputDecoration(
        //         hintText: 'Email',
        //         hintStyle: TextStyle(
        //             fontWeight: FontWeight.w300, color: Colors.black87),
        //         enabledBorder: OutlineInputBorder(
        //           borderSide: BorderSide(color: Colors.grey[700], width: 3),
        //         ),
        //         focusedBorder: UnderlineInputBorder(
        //           borderSide: BorderSide(color: Colors.red[800], width: 3),
        //         ),
        //       ),
        //     ),
        //   ),
        //   //Sreach Icon
        //   IconButton(
        //   onPressed: () {
        //     setState(() {
        //       if (customIcon.icon == Icons.search) {
        //         // Perform set of instructions.
        //       } else {
        //         customIcon = const Icon(Icons.search);
        //         customSearchBar = const Text('My Personal Journal');
        //       }
        //     });
        //     if (customIcon.icon == Icons.search) {
        //       customIcon = const Icon(Icons.cancel);
        //       customSearchBar = const ListTile(
        //         leading: Icon(
        //           Icons.search,
        //           color: Colors.white,
        //           size: 28,
        //         ),
        //         title: TextField(
        //           decoration: InputDecoration(
        //             hintText: 'type in journal name...',
        //             hintStyle: TextStyle(
        //               color: Colors.white,
        //               fontSize: 18,
        //               fontStyle: FontStyle.italic,
        //             ),
        //             border: InputBorder.none,
        //           ),
        //           style: TextStyle(
        //             color: Colors.white,
        //           ),
        //         ),
        //       );
        //     }
        //   },
        //   icon: customIcon,
        // )
        //   ],
        // ),
      ),
    );
  }
}
