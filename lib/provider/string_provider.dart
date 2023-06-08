import 'package:flutter/material.dart';

class ChangeCourse extends ChangeNotifier{

  String subject = '';

  void changeSubject (String newSub){
    subject = newSub;
    notifyListeners();
  }

}