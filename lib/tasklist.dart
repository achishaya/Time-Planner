import 'package:flutter/material.dart';
import 'calendar.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> days = <String>['M', 'T', 'W', 'T', 'F', 'S', 'S'];
  final List<String> entries = <String>['Meeting', 'Playing', 'Shopping', 'Dinner', 'Lunch', 'Dating', 'Swimming'];
  final List<Color> colorCodes = <Color>[Colors.green, Colors.deepOrange, Colors.blueAccent, Colors.amber, Colors.brown, Colors.purple, Colors.red];


  DateTime selected;

  _showDateTimePicker() async {
    selected = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1960),
      lastDate: new DateTime(2050),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Date and Time",
            style: new TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.date_range,
                color: Colors.white,
              ),
              onPressed: () => _showDateTimePicker(),
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () => _showDateTimePicker(),
            )
          ],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Material(
                child: Container(
                  height: 100,
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Material(
                        elevation:20,
                        color: colorCodes[index],
                        borderRadius: BorderRadius.circular(90),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Center(
                            child: Text('${days[index]}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, shadows: <Shadow>[
                              Shadow(
                                offset: Offset(10.0, 10.0),
                                blurRadius: 10.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(5.0, 5.0),
                                blurRadius: 10.0,
                                color: Color.fromARGB(125, 0, 0, 255),
                              ),
                            ],),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Material(
                          elevation:20,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 80,
                            child: Center(
                              child: Text(entries[index]),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        )
    );
  }
}
