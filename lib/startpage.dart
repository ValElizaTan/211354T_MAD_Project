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
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  static List<RoadNameModel> main_road_list = [
    RoadNameModel('Hougang Ctrl Int'),
    RoadNameModel('The Midtown'),
    RoadNameModel('Blk 465A'),
    RoadNameModel('Opp Blk 475B'),
    RoadNameModel('Bef Blk 471B'),
    RoadNameModel('Opp Serangoon Sec Sch'),
    RoadNameModel('Blk 355'),
    RoadNameModel('Opp The Midtown'),
    RoadNameModel('Hougang Ctrl Int'),
  ];

  //creating the list to display and filter
  List<RoadNameModel> display_list = List.from(main_road_list);

  void updateList(String value) {
    //This is the function that will filter the list
    setState(() {
      display_list = main_road_list
          .where((element) => element.road_name?.toLowerCase().contains(value))
          .toList();
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
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        'No Results Found',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(5.0),
                        title: Text(
                          '${display_list[index].road_name}',
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
