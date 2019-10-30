import 'package:flutter/material.dart';
import 'view_activities.dart';
class ListItem extends StatelessWidget{


  final List<String> entries = <String>['Working', 'Sleeping', 'Eating', 'Playing','Traveling','Social Meadia', 'Other'];
  final List<Color> colorCodes = <Color>[Colors.green, Colors.deepOrange, Colors.blueAccent, Colors.amber, Colors.brown, Colors.red, Colors.purple];
  final List<IconData> icons = [Icons.work, Icons.airline_seat_flat, Icons.fastfood, Icons.extension, Icons.train, Icons.android, Icons.add];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Title(color: Colors.white, child: Text("Activities")), backgroundColor: Colors.blue, elevation: 10,),
      body: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            child: Material(
              color: colorCodes[index],
              borderRadius: BorderRadius.circular(15),
              elevation: 8,
              shadowColor: Color(0x802196F3),
              child: FlatButton.icon(
                  padding: EdgeInsets.only(left: 40, right: 60),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ViewActivities(index, methodSelection(index));}));
                  },
                  icon: Icon(icons[index], size: 60, color: Colors.white),
                  label: Text(entries[index], style: TextStyle(fontSize: 20, color: Colors.white))),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }

  String methodSelection(int index){
    switch(index){
      case 0: {
        return "Working";
      } break;
      case 1: {
        return "Sleeping";
      } break;
      case 2: {
        return "Eating";
      } break;
      case 3: {
        return "Playing";
      } break;
      case 4: {
        return "Traveling";
      } break;
      case 5: {
        return "Social Meadia";
      } break;
      case 6: {
        return "Other";
      } break;
    }
  }
}