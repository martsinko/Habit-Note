import 'package:flutter/material.dart';
class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor:const Color.fromARGB(255, 240, 240, 240),
    body: SafeArea (
      child: Column(
        
        children:  [
          Padding(
            padding: const  EdgeInsets.only(top: 195 ,right: 38 ,left: 36 ),
             // ignore: avoid_unnecessary_containers
             child: Container(
           width: 340 ,
           height: 340 ,
               child: const  Image(image: AssetImage('assets/cuatesecond.png')
               ),
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
                  Text('To-dos', style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.w500),),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text('List out your day-to-day-tasks', style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),),
                  ),
                ]
                  ),
             ),
      ), 
        ],
      )
    ),
    );
      
  }
}