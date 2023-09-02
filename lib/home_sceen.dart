import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? email;
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString("email");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text("Welcome to ITI :"),
          const SizedBox(
            height: 20,
          ),
          Text("$email")
        ],
      )),
    );
  }
}
