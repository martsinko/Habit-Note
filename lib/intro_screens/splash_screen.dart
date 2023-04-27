import 'dart:async';

import 'package:flutter/material.dart';
 class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
 
   @override
   State<SplashScreen> createState() => _SplashScreenState();
 }
 
 class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(-2.6, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

   @override
    void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/');
    });
  
  }

@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


   @override
     Widget build(BuildContext context) {
    
     return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 179, 71),
     body: SafeArea(
  
    child: SlideTransition(
      position: _offsetAnimation ,
    child:Column(
      
      children: const   [

          Padding(
           padding: EdgeInsets.only(top: 236.5,right: 126.1,left: 127),
            child: Image(
        
            image: AssetImage('assets/logo2.png'),
            width: 161,
            height: 141,
            ),
         ),

           Center(
          child: Text('HaBIT Note', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
          
         ),

          Padding(
            padding: EdgeInsets.only(top: 380,left: 42,right: 42),
            child: SizedBox(
            width: 330 ,
            height: 17, 
        
            child: Text('© Copyright HABIT 2021. All rights reserved', textAlign: TextAlign.center, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),) ,
         ),
          )
      ],
    ),),
        ),
     );
   }
 }