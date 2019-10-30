import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './main.dart';
import 'piechart.dart';
import 'itemlist.dart';
import 'eventshomepage.dart';
import 'utils/myslides.dart';
import 'package:flutter/animation.dart';

class HomePage extends StatelessWidget {
  FirebaseUser firebaseUser;

  HomePage(user) {
    if (user == null) {
    } else {
      firebaseUser = user;
      print(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: DashBoard(firebaseUser),
      ),
    );
  }
}

class DashBoard extends StatefulWidget {
  FirebaseUser firebaseUser;

  DashBoard(FirebaseUser user) {
    firebaseUser = user;
    print(user);
  }

  @override
  _DashBoardState createState() => _DashBoardState(firebaseUser);
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin {
  FirebaseUser firebaseUser;
  String userName, userEmail, userProfile;

  Animation animation, delayedAnimation, muchDelayedAnimated;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimated = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.0, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();
  }

  _DashBoardState(FirebaseUser user) {
    if (user != null) {
      firebaseUser = user;
      userName = user.displayName.toString();
      userEmail = user.email.toString();
      userProfile = user.photoUrl.toString();
      print(userName);
    }
  }

  var data = [0.0, 0.5, 1.0, 1.5, 2.0, -0.5, 1.0, 2.0, 1.0, -0.5];
  List<CircularStackEntry> circularData = <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(700.0, Color(0xff4285F4), rankKey: 'Q1'),
        new CircularSegmentEntry(1000.0, Color(0xfff3af00), rankKey: 'Q2'),
        new CircularSegmentEntry(1800.0, Color(0xffec3337), rankKey: 'Q3'),
        new CircularSegmentEntry(1000.0, Color(0xff40b24b), rankKey: 'Q4'),
      ],
      rankKey: 'Quarterly Profits',
    ),
  ];

  void _signout() {
    GoogleSignIn googleSignIn = GoogleSignIn();
    googleSignIn.signOut();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MyApp();
    }));
  }

  Future<void> _signoutAlert() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 15,
          title: Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Sign Out"),
              ],
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Divider(
                  thickness: 2,
                  color: Colors.cyan,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Are You Sure?"),
              ],
            ),
          ),
          actions: <Widget>[
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(2),
              child: Container(
                height: 30,
                width: 80,
                child: FlatButton(
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    _signout();
                  },
                ),
              ),
            ),
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(2),
              child: Container(
                height: 30,
                width: 80,
                color: Colors.cyan,
                child: FlatButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Icon icon = Icon(Icons.assignment_ind);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
            appBar: AppBar(
              elevation: 10,
              title: Text("DashBoard"),
              actions: <Widget>[
                SizedBox(
                  child: IconButton(
                      onPressed: _signoutAlert,
                      icon: Icon(
                        Icons.assignment_ind,
                        color: Colors.white,
                        size: 30,
                      )),
                )
              ],
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 15,
                      child: Transform(
                        transform: Matrix4.translationValues(
                            0.0, muchDelayedAnimated.value * height, 0.0),
                        child: PieChartSample2(),  // Pie chart
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Transform(
                        transform: Matrix4.translationValues(
                            delayedAnimation.value * width, 0.0, 0.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Material(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(15),
                                elevation: 14,
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          SlideDuration(
                                              widget: EventsHomePage()));
                                    },
                                    child: Text(
                                      "Schedule",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ))),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0.0, 0.0),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Material(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15),
                              elevation: 14,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        SlideDuration2(widget: ListItem()));
                                  },
                                  child: Text(
                                    "Events",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ),
            drawer: Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              elevation: 10,
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,

                children: <Widget>[
                  DrawerHeader(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(90),
                            elevation: 10,
                            child: Container(
                                width: 80.0,
                                height: 80.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new NetworkImage(userProfile)))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            userName,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            userEmail,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.cyan.withOpacity(0.7),
                    ),
                  ),
                  ListTile(
                    title: Container(
                        height: 50,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100,
                              child: Center(
                                child: Icon(
                                  Icons.assignment_ind,
                                  size: 30,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Sign Out',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      _signoutAlert();
                    },
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.cyan.withOpacity(0.3),
                  ),
                  ListTile(
                    title: Container(
                        height: 50,
                        child: Center(
                          child: Text('Sign'),
                        )),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.cyan.withOpacity(0.3),
                  ),
                  ListTile(
                    title: Container(
                        height: 50,
                        child: Center(
                          child: Text('Sign'),
                        )),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.cyan.withOpacity(0.3),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
