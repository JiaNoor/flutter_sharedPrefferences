import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shr_pref/screens/login.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Logout"),
            IconButton(
                onPressed: () {
                  logindata.setBool('login', true);
                  Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.teal,
                ))
          ],
        ),
      ),
    );
  }
}
