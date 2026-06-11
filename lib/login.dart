import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:registration/forgot.dart';
import 'package:registration/signup.dart';

class Login extends StatefulWidget {
  
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Login to your account",
                  style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 30),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Align(alignment: Alignment.topLeft, child: Text("Email")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("password"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: TextFormField(controller: passwordcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 40), Align(alignment: Alignment.bottomRight,
                  child: GestureDetector(onTap: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: ((context) => Forgot())),
                        );
                  },
                  child: Text("Forgot password?",style: GoogleFonts.aBeeZee(color: Colors.lightBlue),))),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: ((context) => Signup())),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Lottie.asset("assets/login.json", height: 250, width: 250),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
