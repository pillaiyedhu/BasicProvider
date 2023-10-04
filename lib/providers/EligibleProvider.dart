import 'package:flutter/material.dart';

class EligibleProvider extends ChangeNotifier {
  String eligibleMessage = "";
  bool changeColor = false;

  String get getEligibleMessage => eligibleMessage;
  bool get getColor => changeColor;

  void checkEligibility(int age) {
    if (age >= 18) {
      eligibleMessage = 'You are eligible';
      changeColor = true;
    } else {
      eligibleMessage = 'You are not eligible';
      changeColor = false;
    }

    notifyListeners();
  }
}
