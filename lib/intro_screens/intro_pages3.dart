import 'package:flutter/material.dart';
import 'package:program/pages/home.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 240, 240, 240),
       body: SafeArea(
        child: Column(
          children:  [
            Padding(padding: const EdgeInsets.only(top: 195,right: 38,left: 36,), 
            child: Container(
           width: 340,
           height: 340,
               child: const  Image(image: AssetImage('assets/amicothird.png')
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
                  Text('Image to Text Converter', style: TextStyle(color: Colors.black, fontSize: 22.5, fontWeight: FontWeight.w500),),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text('Upload your images and convert to text', style: TextStyle(color: Colors.black, fontSize: 16.8, fontWeight: FontWeight.w400),),
                  ),
                ]
                  ),
             ),
      ), 
              Padding(
                padding: const EdgeInsets.only(top:22.0),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
    ),
                minimumSize: const Size(325, 52),
                  backgroundColor: const Color.fromARGB(255, 255, 179, 71)),
            onPressed: () {
                // перехід на Home екран
                Navigator.pushReplacementNamed(context,'home');
            },
            child: const  Text('Done',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
              ),
          ],
       ),
       )
    );
  }
}