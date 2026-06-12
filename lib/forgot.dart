import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration/login.dart';
import 'package:registration/service.dart';

class Forgot extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  "Reset Password",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                    hintText: "Enter Email",
                    hintStyle: GoogleFonts.aBeeZee(
                      fontSize: 30,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {if (formkey.currentState!.validate()) {
                        password(
                          
                          emailcontroller.text,
                          
                          context,
                        );emailcontroller.clear();
                      
                      }},
                    child: Text("Send link"),
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
                      "Go back to",
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
                        "  Login",
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
