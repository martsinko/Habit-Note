// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:program/intro_screens/intro_pages1.dart';
import 'package:program/intro_screens/intro_pages2.dart';
import 'package:program/intro_screens/intro_pages3.dart';
import 'package:program/intro_screens/note.dart';
import 'package:program/pages/home.dart';


 class Screen extends StatefulWidget {
   const Screen({super.key});
 
   @override
   State<Screen> createState() => _ScreenState();
 }
 
 class _ScreenState extends State<Screen> {

      //controller dlya dot
      final PageController _controller = PageController();
      final int _numPages = 3;
  double _currentPage = 0;
    
      
    
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
      body: Stack(

//page view
      children:  [
          PageView(
            controller: _controller,
            onPageChanged: (int page){
                setState(() {
                   _currentPage = page.toDouble();
                });
            },

            children: const    [
              IntroPage1(),
            IntroPage2(),
            IntroPage3(),
              Home()
            ],
          ),

          // dot indekator
        
        Padding(
          padding: const EdgeInsets.only(top: 800, left: 95, right: 16),
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: DotsIndicator(
              dotsCount: _numPages,
              position: _currentPage,
              reversed: false,
              mainAxisAlignment: MainAxisAlignment.center,
              decorator: DotsDecorator(
                
                spacing: const EdgeInsets.only(left: 24),
                size: const  Size(35.0,16.0),
                color: Colors.white,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
                ) ,
                
                
                activeSize: const Size(65.0, 16.0),
                activeColor: const Color.fromARGB(255, 255, 179, 71),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
                )
              ),
              ), 
                ),
        )
      ],


      ),
      
      

     );
   }
 }

 