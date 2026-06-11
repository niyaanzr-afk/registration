import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration/login.dart';

class Signup extends StatefulWidget {
 
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
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
                ),SizedBox(height: 30,),
                Align(alignment: Alignment.topLeft,
                child: Text("Username")),
                TextFormField(controller: usernamecontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Email")),
                    
                TextFormField(controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),SizedBox(height: 30,),
                  Align(alignment:Alignment.topLeft,child:  Text("Password")),
                TextFormField(controller: passwordcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),SizedBox(height: 30,),
                  Align(alignment:Alignment.topLeft,child:  Text("Confirm Password")),
                TextFormField(controller: confirmpasswordcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),SizedBox(height: 40,),
                  SizedBox(height: 50,width: 400,
                    child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                    ),
                                  ),
                  ), Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.aBeeZee(color: Colors.black, fontSize: 15),
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
