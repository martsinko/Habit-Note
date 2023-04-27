
import 'package:flutter/material.dart';
import 'package:program/intro_screens/splash_screen.dart';
import 'package:program/pages/home.dart';
import 'package:program/pages/screen.dart';


void main()=>runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
theme: ThemeData(
  primaryColor: Colors.white
),
  initialRoute: 'splash',
  routes: {
    'splash': (context) =>  const SplashScreen(),
    '/': (context) =>  const Screen(),
    'home':(context) => const Home()
    
  },
),);


