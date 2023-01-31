import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

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
      home: FeedbackPage(),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _key = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController body = TextEditingController();

  sendEmail(String subject, String body, String recipeintemail) async {
    final Email email = Email(
      body: body,
      subject: subject,
      recipients: [recipeintemail],
      isHTML: false,
    );
    await FlutterEmailSender.send(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              Container(
                //Feedback text
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Feedback Form',
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              Padding(
                //Sneder Email Text field
                padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
                child: TextFormField(
                  controller: email,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
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
                //Subject Text field
                padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
                child: TextFormField(
                  controller: subject,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter Subject',
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
                //Body Text field
                padding: const EdgeInsets.only(right: 50, left: 50, top: 10),
                child: TextFormField(
                  controller: body,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter Feedback',
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
                //Email Button
                padding: const EdgeInsets.all(40),
                child: RaisedButton(
                  color: Colors.white,
                  child:
                      Text('Send Email', style: TextStyle(color: Colors.black)),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 2)),
                  onPressed: () {
                    _key.currentState.save();
                    sendEmail(subject.text, body.text, email.text);
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
