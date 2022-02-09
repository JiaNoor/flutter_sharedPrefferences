import 'package:flutter/material.dart';
import 'package:shr_pref/functions.dart';
import 'package:shr_pref/screens/home_screen.dart';

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

Widget customButton(Size size, context) {
  return GestureDetector(
    onTap: () {
      String username = usernameController.text;
      String password = passwordController.text;
      if (username == "abc" && password == "abc123") {
        logindata.setBool('login', false);
        logindata.setString('username', username);
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => HomeScreen()));
      } else {
        print("Please fill form correctly");
      }
    },
    child: Container(
        height: size.height / 14,
        width: size.width / 1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.purple[800],
        ),
        alignment: Alignment.center,
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )),
  );
}

Widget field(Size size, String hintText, IconData icon, bool obscureText,
    TextEditingController cont) {
  return Container(
    height: size.height / 14,
    width: size.width / 1.1,
    child: TextField(
      controller: cont,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.purple,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
