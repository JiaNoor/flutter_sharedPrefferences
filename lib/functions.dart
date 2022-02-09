import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shr_pref/screens/home_screen.dart';

late SharedPreferences logindata;
late bool newuser;

void checkLoggedIn(context) async {
  logindata = await SharedPreferences.getInstance();
  newuser = (logindata.getBool('login') ?? true);
  print(newuser);
  if (newuser == false) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
