// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color.fromARGB(255, 240, 240, 240)
      ,
    body: SafeArea (
      child: Column(

         children:  [
              Padding(
                padding: const EdgeInsets.only(top: 109.0, left: 39.0, right: 69.0),
                child: Container(
                 color: Color.fromARGB(255, 240, 240, 240) ,
                  width: 306 ,
                  height: 58,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: const  [
                       Text('WELCOME TO',style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w300, fontStyle: FontStyle.normal),),
                       Text('HaBIT Note',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 19.8
                       ),)
                    ],
                  ),
                ),
              ),
              // ignore: sized_box_for_whitespace
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 36 ,right: 38),
                child: SizedBox(
                  width: 340,
                  height: 340,
                  child: const Image(image: AssetImage('assets/amicoimage.png'),),
                ),
              ),
             
             Padding(padding: const EdgeInsets.only(top: 4, left: 40 ,right: 30 ), 
             child: Container(
              width: 344,
              height: 101,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Take Notes', style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w500),),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text('Quickly capture what’s on your mind', style: TextStyle(color: Colors.black, fontSize: 17.5, fontWeight: FontWeight.w400),),
                  )
                ],
              ),
             ) ,
             )

         ], 


      )
      ),
    );
  }
}