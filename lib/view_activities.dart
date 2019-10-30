import 'package:flutter/material.dart';

import 'linechart1.dart';
import 'linechart2.dart';
import 'linechart3.dart';
import 'linechart4.dart';

class ViewActivities extends StatelessWidget {
  int methodIndex;
  String title;

  ViewActivities(index, title) {
    this.methodIndex = index;
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Activities(methodIndex, title);
  }
}

class Activities extends StatefulWidget {
  String title;
  int index;

  Activities(index, title) {
    this.title = title;
    this.index = index;
  }

  @override
  _Activities createState() => _Activities(title, index);
}

class _Activities extends State<Activities> {
  String title;
  int index;

  _Activities(title, index) {
    this.title = title;
    this.index = index;
  }

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Material getInterface(int index) {
    print(title);

    switch (index) {
      case 0:
        {
          return working();
        }
      case 1:
        {
          return sleeping();
        }
      case 2:
        {
          return eating();
        }
      case 3:
        {
          return playing();
        }
      case 4:
        {
          return traveling();
        }
      case 5:
        {
          return socialMedia();
        }
      case 6:
        {
          return other();
        }
      default:
        {
          return working();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 10,
      ),
      body: getInterface(index),
    );
  }

  Material working() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 14,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                child: LineChartSample2(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Material(
                  elevation: 14,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: CustomScrollView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                slivers: <Widget>[
                                  new SliverPadding(
                                    padding: const EdgeInsets.all(10.0),
                                    sliver: SliverList(
                                      delegate: SliverChildListDelegate(
                                        <Widget>[
                                          Text(
                                            'Today',
                                            textWidthBasis:
                                            TextWidthBasis.longestLine,
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Material sleeping() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 14,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                child: LineChartSample4(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Material(
                  elevation: 14,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: CustomScrollView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                slivers: <Widget>[
                                  new SliverPadding(
                                    padding: const EdgeInsets.all(10.0),
                                    sliver: SliverList(
                                      delegate: SliverChildListDelegate(
                                        <Widget>[
                                          Text(
                                            'Today',
                                            textWidthBasis:
                                            TextWidthBasis.longestLine,
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Material eating() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 14,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                child: LineChartSample3(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Material(
                  elevation: 14,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: CustomScrollView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                slivers: <Widget>[
                                  new SliverPadding(
                                    padding: const EdgeInsets.all(10.0),
                                    sliver: SliverList(
                                      delegate: SliverChildListDelegate(
                                        <Widget>[
                                          Text(
                                            'Today',
                                            textWidthBasis:
                                            TextWidthBasis.longestLine,
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Material playing() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 14,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                child: LineChartSample3(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Material(
                  elevation: 14,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: CustomScrollView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                slivers: <Widget>[
                                  new SliverPadding(
                                    padding: const EdgeInsets.all(10.0),
                                    sliver: SliverList(
                                      delegate: SliverChildListDelegate(
                                        <Widget>[
                                          Text(
                                            'Today',
                                            textWidthBasis:
                                            TextWidthBasis.longestLine,
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Material traveling() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 14,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                child: LineChartSample3(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Material(
                  elevation: 14,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: CustomScrollView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                slivers: <Widget>[
                                  new SliverPadding(
                                    padding: const EdgeInsets.all(10.0),
                                    sliver: SliverList(
                                      delegate: SliverChildListDelegate(
                                        <Widget>[
                                          Text(
                                            'Today',
                                            textWidthBasis:
                                            TextWidthBasis.longestLine,
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Material socialMedia() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 14,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                child: LineChartSample4(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Material(
                  elevation: 14,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Flexible(
                              child: CustomScrollView(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                slivers: <Widget>[
                                  new SliverPadding(
                                    padding: const EdgeInsets.all(10.0),
                                    sliver: SliverList(
                                      delegate: SliverChildListDelegate(
                                        <Widget>[
                                          Text(
                                            'Today',
                                            textWidthBasis:
                                            TextWidthBasis.longestLine,
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Material(
                                            elevation: 14,
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 120,
                                              padding: EdgeInsets.only(top: 20),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      ' : ',
                                                      style: TextStyle(
                                                        fontSize: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 40,
                                                    height: double.infinity,
                                                    child: TextField(
                                                      keyboardType: TextInputType.number,
                                                      style:
                                                      TextStyle(fontSize: 40),
                                                      decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                      maxLength: 1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  Material other() {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Material(
              elevation: 14,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: LineChartSample5(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Material(
                  elevation: 14,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      child: Container(
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          child: CustomScrollView(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            slivers: <Widget>[
                              new SliverPadding(
                                padding: const EdgeInsets.all(10.0),
                                sliver: SliverList(
                                  delegate: SliverChildListDelegate(
                                    <Widget>[
                                      Text(
                                        'Today',
                                        textWidthBasis:
                                            TextWidthBasis.longestLine,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Material(
                                        elevation: 14,
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 120,
                                          padding: EdgeInsets.only(top: 20),
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                      TextStyle(fontSize: 40),
                                                  decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                      TextStyle(fontSize: 40),
                                                  decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  ' : ',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                      TextStyle(fontSize: 40),
                                                  decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                      TextStyle(fontSize: 40),
                                                  decoration:
                                                      new InputDecoration(
                                                          hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Material(
                                        elevation: 14,
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 120,
                                          padding: EdgeInsets.only(top: 20),
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  ' : ',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Material(
                                        elevation: 14,
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 120,
                                          padding: EdgeInsets.only(top: 20),
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  ' : ',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 40,
                                                height: double.infinity,
                                                child: TextField(
                                                  keyboardType: TextInputType.number,
                                                  style:
                                                  TextStyle(fontSize: 40),
                                                  decoration:
                                                  new InputDecoration(
                                                      hintText: '0'),
                                                  maxLength: 1,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
