import 'package:flutter/material.dart';
import 'package:shr_pref/functions.dart';
import 'package:shr_pref/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    checkLoggedIn(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: size.width / 0.5,
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
              ),
              SizedBox(
                height: size.height / 50,
              ),
              Container(
                width: size.width / 1.1,
                child: Text(
                  "Welcome to MyApp",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.lime[800],
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 25,
              ),
              Container(
                color: Colors.red[200],
                width: size.width / 1.1,
                child: Text(
                  " Sign In to Contiue!",
                  style: TextStyle(
                    color: Color.fromARGB(255, 83, 1, 77),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Akronim',
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 15,
              ),
              Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(size, "email", Icons.account_box, false,
                    usernameController),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(
                      size, "password", Icons.lock, true, passwordController),
                ),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              customButton(size, context),
              SizedBox(
                height: size.height / 40,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.pink[900],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
