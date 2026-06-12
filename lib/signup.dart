import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration/login.dart';
import 'package:registration/service.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Sign up",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Create an account,It's free",
                  style: GoogleFonts.aBeeZee(fontSize: 30, color: Colors.grey),
                ),
                SizedBox(height: 30),
                Align(alignment: Alignment.topLeft, child: Text("Username")),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username is required";
                    }
                  },
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 30),
                Align(alignment: Alignment.topLeft, child: Text("Email")),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    if (!(value.contains("@") && value.contains("."))) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 30),
                Align(alignment: Alignment.topLeft, child: Text("Password")),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    if ((value.length == 6)) {
                      return "Enter a valid password";
                    }
                    return null;
                  },
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Confirm Password"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    if (value != passwordcontroller.text) {
                      return "Password doesn't match";
                    }
                    return null;
                  },
                  controller: confirmpasswordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        register(
                          usernamecontroller.text,
                          emailcontroller.text,
                          passwordcontroller.text,
                          context,
                        );
                        usernamecontroller.clear();
                        emailcontroller.clear();
                        passwordcontroller.clear();
                        confirmpasswordcontroller.clear();
                      }
                    },
                    child: Text("Sign up"),
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
                      "Already have an account?",
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: ((context) => Login())),
                        );
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.aBeeZee(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
