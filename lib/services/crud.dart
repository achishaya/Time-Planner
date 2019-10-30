import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods{
  bool isLoggedIn(){
    if(FirebaseAuth.instance.currentUser() != null){
      print(FirebaseAuth.instance.currentUser().toString());
      return true;
    }else{
      print("Error12345");
      return false;
    }
  }

  Future<void> addData(Map carData) async{
    if(isLoggedIn()){
      Firestore.instance.collection('testCrud').add(carData).catchError((e){
        print(e);
      });
    }else{
      print('You need to be logged in');
    }
  }
}