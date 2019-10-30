import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calendar extends StatelessWidget {
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
    var dateFormat_1 = new Column(
      children: <Widget>[
        selected != null
            ? new Text(
                new DateFormat('yyyy  MMMM  dd').format(selected),
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              )
            : new SizedBox(
                width: 0.0,
                height: 0.0,
              ),
      ],
    );

    return new Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 10,
          child: Container(
            height: 90,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height:23,
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      dateFormat_1,
                      FlatButton.icon(
                        onPressed: () => _showDateTimePicker(),
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.cyan,
                          size: 20,
                        ),
                        label: Text(""),
                      ),
                    ],
                  ),
                ),
                TextField(
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
