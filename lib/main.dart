import 'package:flutter/material.dart';
import 'package:flutter_app/other/animatedgridview.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'progressbar.dart';
import 'homepage.dart';
import 'package:flutter/animation.dart';
import 'other/flipcard.dart';
import 'other/animatedgridview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
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
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();
  }

  Future<void> _loginMessage() async {
    return showDialog<void>(
      barrierDismissible: false,
      context: context, // user must tap button!
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 60), () {
          Navigator.of(context).pop(true);
        });
        return AlertDialog(
          elevation: 15,
          title: Text(
            'Login',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          content: SingleChildScrollView(
              child: Container(
            height: 400,
            width: 300,
            child: LoginPage(),
          )),
        );
      },
    );
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googlSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async {
    final GoogleSignInAccount googleUser = await _googlSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser userDetails =
        (await _firebaseAuth.signInWithCredential(credential)).user;
    assert(userDetails.email != null);
    assert(userDetails.displayName != null);
    assert(!userDetails.isAnonymous);
    assert(await userDetails.getIdToken() != null);

    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    assert(userDetails.uid == currentUser.uid);

    print("User Name: ${userDetails.displayName}");

    print(userDetails);

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage(userDetails);
    }));

    //Route route = MySlide(builder: (context) => HomePage(userDetails));

    return userDetails;
  }

  Future<void> _neverSatisfied() async {
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
                Text("Sign In Failed"),
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
                Text("Check Your Internet Connection"),
              ],
            ),
          ),
          actions: <Widget>[
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(2),
              child: Container(
                height: 30,
                width: 60,
                child: FlatButton(
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }

  Future<void> _neverSatisfy(String name) async {
    return showDialog<void>(
      barrierDismissible: false,
      context: context, // user must tap button!
      builder: (BuildContext context) {
        Future.delayed(Duration(seconds: 9), () {
          Navigator.of(context).pop(true);
        });
        return AlertDialog(
          elevation: 15,
          title: Text(
            'Please Wait ' + name,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          content: SingleChildScrollView(
              child: Container(
            height: 200,
            width: 300,
            child: LiquidCircularProgressIndicatorPage(),
          )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child){
        return Scaffold(
          body: Transform(
            transform: Matrix4.translationValues(animation.value*width, 0.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/stick.jpg',
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.srgbToLinearGamma())),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child: RaisedButton(
                        color: Colors.black,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return HomePageFlipCard();
                          }));
                        },
                      ),
                    )
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
                          Transform(
                            transform: Matrix4.translationValues(0.0, delayedAnimation.value*height, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.alarm, size: 100, color: Colors.white),
                                SizedBox(height: 10),
                                Text(
                                  "Time Planner",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(5.0, 5.0),
                                        blurRadius: 15.0,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                      ),
                                      Shadow(
                                        offset: Offset(5.0, 5.0),
                                        blurRadius: 15.0,
                                        color: Color.fromARGB(125, 0, 0, 255),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Transform(
                                    transform: Matrix4.translationValues(muchDelayedAnimated.value*width, 0.0, 0.0),
                                    child: Container(
                                      //width: double.infinity,
                                      padding: EdgeInsets.only(left: 20, right: 20),
                                      /*child: FlatButton(
                                    color: Colors.red,
                                    onPressed: () {
                                      _loginMessage();
                                    },
                                    child: null),*/
                                      child: Material(
                                        elevation: 16,
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        shadowColor: Colors.black,
                                        child: FlatButton.icon(onPressed: () => _signIn()
                                            .then((FirebaseUser user) => _neverSatisfy(user.displayName))
                                            .catchError((e) => _neverSatisfied(),), label: Text("Sign in with Google", style: TextStyle(color: Colors.grey, fontSize: 15),),icon: Image.asset('images/preview.jpeg', height: 30,width: 30, fit: BoxFit.fill,)),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: FlatButton(
                                  color: Colors.black,
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return AnimatedGridView();
                                    }));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
