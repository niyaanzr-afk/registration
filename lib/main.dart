import 'package:flutter/material.dart';
import 'package:registration/forgot.dart';
import 'package:registration/login.dart';
import 'package:registration/signup.dart';
import 'package:registration/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main()async {await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: Welcome() ),); 
}

