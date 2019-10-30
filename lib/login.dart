import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homepage.dart';
import 'signup.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'progressbar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GoogleSignIn _googleAuth = new GoogleSignIn();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

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

  Future<void> _neverSatisfy() async {
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
            'Please Wait ',
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

  Future<String> _testSignInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleAuth.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final FirebaseUser user =
        (await _firebaseAuth.signInWithCredential(credential)).user;
    assert(user.email != null);
    assert(user.displayName != null);
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    assert(user.uid == currentUser.uid);
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage(user);
    }));

    print(user.displayName);

    return 'signInWithGoogle succeeded: $user';
  }

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: "E-Mail"),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                child: RaisedButton(
                    child: Text('Login'),
                    elevation: 7,
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _email, password: _password)
                          .then((user) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage(null);
                        }));
                      }).catchError((e) {
                        print(e);
                      });
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 200,
                child: FlatButton.icon(
                    onPressed: () => _testSignInWithGoogle()
                        .then((user) => _neverSatisfy())
                        .catchError(
                          (e) => _neverSatisfied(),
                        ),
                    label: Text(
                      "Sign in with Google",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    icon: Image.asset(
                      'images/preview.jpeg',
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Text('You do not have an account'),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: RaisedButton(
                    child: Text('Sign up'),
                    elevation: 7,
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SignUpPage();
                      }));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
