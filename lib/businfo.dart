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
      home: BusInfoPage(),
    );
  }
}

class BusInfoPage extends StatefulWidget {
  @override
  State<BusInfoPage> createState() => _BusInfoPageState();
}

class _BusInfoPageState extends State<BusInfoPage> {
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
            //Text field
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        "324",
                        style: TextStyle(fontSize: 35, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => ListTile(
                  contentPadding: EdgeInsets.all(2),
                  title: Text('${display_list[index].road_name}',
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
