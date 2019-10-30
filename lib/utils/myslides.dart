import 'package:flutter/material.dart';

class MySlide extends MaterialPageRoute{
  MySlide({WidgetBuilder builder, RouteSettings settings})
      :super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> custom = Tween<Offset> (begin: Offset(0.8, 0.8), end: Offset(0.0, 0.0)).animate(animation);
    return SlideTransition(position: custom, child: child,);
  }
}

class MySlide2 extends MaterialPageRoute{
  MySlide2({WidgetBuilder builder, RouteSettings settings})
      :super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> custom = Tween<Offset> (begin: Offset(-0.8, 0.8), end: Offset(0.0, 0.0)).animate(animation);
    return SlideTransition(position: custom, child: child,);
  }
}

class SlideDuration extends PageRouteBuilder{
  Widget widget;

  SlideDuration({this.widget}): super(
    pageBuilder:(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation){
      return widget;
    },
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder:(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
      Animation<Offset> custom = Tween<Offset> (begin: Offset(-0.8, 0.8), end: Offset(0.0, 0.0)).animate(animation);
      return SlideTransition(position: custom, child: child,);
    },
  );
}

class SlideDuration2 extends PageRouteBuilder{
  Widget widget;

  SlideDuration2({this.widget}): super(
    pageBuilder:(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation){
      return widget;
    },
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder:(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
      Animation<Offset> custom = Tween<Offset> (begin: Offset(0.8, 0.8), end: Offset(0.0, 0.0)).animate(animation);
      return SlideTransition(position: custom, child: child,);
    },
  );
}