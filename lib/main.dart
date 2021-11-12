import 'package:flutter/material.dart';
import 'package:login_registration_project/pages/thanksYouPage.dart';
import 'pages/welcomeScreen.dart';
import 'pages/login.dart';
import 'pages/signUp.dart';
import 'pages/thanksYouPage.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
routes: {
   '/': (context) => WelcomeScreen(),
  '/login': (context) => LoginPage(),
  '/signUp': (context) => SignUpPage(),
  '/thanksPage': (context) => ThankyouPage(),
},
    ));

