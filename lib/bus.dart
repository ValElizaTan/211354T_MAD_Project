import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//Class
import 'model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BusPage(),
    );
  }
}

class BusPage extends StatefulWidget {

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  static List<BusModel> main_bus_list = [
    BusModel('10'),
    BusModel('72'),
    BusModel('74'),
    BusModel('87'),
    BusModel('101'),
    BusModel('102'),
    BusModel('112'),
    BusModel('113'),
    BusModel('119'),
    BusModel('136'),
    BusModel('151'),
    BusModel('324'),
  ];

  //creating the list to display and filter
  List<BusModel> display_list = List.from(main_bus_list);
   

  void updateList(String value) {
    //This is the function that will filter the list
    setState(() {
      display_list = main_bus_list.where((element) => element.bus_num?.toLowerCase().contains(value)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Search field
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                hintText: 'Search...',
                suffixIcon: Icon(Icons.search, color: Colors.black),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.all(5.0),
                  title: Text('${display_list[index].bus_num}', textAlign: TextAlign.start,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
