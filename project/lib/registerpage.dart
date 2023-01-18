import 'package:flutter/material.dart';
import 'package:project/model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(5),
              height: 300,
              width: 500,
              child: Image(
                image: AssetImage('images/login_bg.jpg'),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'ID',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: pwd,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'PWD',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text('Login', style: TextStyle(color: Colors.white)),
              onPressed: () {
                // initialize DATA
                MyData data = MyData(email.text, pwd.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage(data: data)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final MyData data;
  bool togglecolour = true;

  HomePage({@required this.data});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.toggle_off_outlined),
        onPressed: () =>
            setState(() => widget.togglecolour = !widget.togglecolour),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (widget.data.email == "superhero@mail.com") ...[
              SizedBox(height: 50),
              Text('Welcome, Superhero',
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              SizedBox(height: 50),
              CircleAvatar(
                backgroundColor:
                    widget.togglecolour ? Colors.blueAccent : Colors.redAccent,
                radius: 110,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/superhero.jpg'),
                ),
              ),
              SizedBox(height: 30),
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
                  backgroundImage: AssetImage('images/images.jpeg'),
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text('Back', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
