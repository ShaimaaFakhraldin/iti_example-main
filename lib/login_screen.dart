import 'package:facebook/home_sceen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State {
  bool passwordVisibility = true;
  String? emailValue;
  String? passwordValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          const Image(
            image: AssetImage("assets/images.png"),
          ),
          Text(
            "${emailValue}",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Login in to your account",
            style: GoogleFonts.aclonica(
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Container(
                    width: 100,
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          size: 15,
                          color: Colors.red[200],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "your email",
                          style: GoogleFonts.aclonica(
                              color: Colors.grey, fontSize: 13),
                        )
                      ],
                    ),
                  ),

                  // labelText: "shaimaa",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                ),
                onChanged: (String? value) {
                  print(value);
                  setState(() {
                    emailValue = value;
                  });
                },
              )),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                obscureText: passwordVisibility,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  label: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 15,
                          color: Colors.red[200],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Password",
                          style: GoogleFonts.aclonica(
                              color: Colors.grey, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: passwordVisibility
                        ? const Icon(
                            Icons.visibility,
                            color: Colors.cyan,
                            size: 20,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Colors.cyan,
                            size: 20,
                          ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(30)),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  saveData("${emailValue}");
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                child: const Text("Login")),
          )
        ],
      ),
    ));
  }

  void saveData(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", email);
  }
}
