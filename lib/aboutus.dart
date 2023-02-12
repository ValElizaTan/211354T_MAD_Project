import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Files
import 'loginpage.dart';
import 'feedback.dart';

class AboutUsPage extends StatefulWidget {
  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                //Abuot Us text
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.all(5),
                child: Text(
                  'About Us',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('images/bus.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                //Application Info text
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Bus App that alerts users when they are reaching their destination',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                //Company Info text
                padding: const EdgeInsets.all(10),
                child: Text(
                  'NYP',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Container(
                //Developer Info text
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Valerie Tan \n 211354T',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    launch('tel: +65 83160942');
                  },
                  child: Text("Contact Us")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedbackPage()),
                    );
                  },
                  child: Text("Feedback Us")),
            ],
          ),
        ),
      ),
    );
  }
}
