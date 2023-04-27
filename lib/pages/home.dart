import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:program/intro_screens/note.dart';
 



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  

  @override
  State<Home> createState() => _HomeState(); 
}

class _HomeState extends State<Home> {
   List notes = [];
  
      void initFireBase() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      }

        @override
          void initState(){
              notes.addAll(['fsjkfsjfks', 'dfjwkkfs', 'fjdkfjsk']);
              super.initState();
              initFireBase();
        }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: SizedBox(
                  
                    width: 68,
                    height: 68,
    
                child: FloatingActionButton(
                  elevation: 0,
                            backgroundColor: const Color.fromARGB(255, 57, 26, 26),
    
                  onPressed: ()  {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Note()));
    },
                  child: const Icon(Icons.add, size: 66,),
                  
                ),
                
              ),
            ),
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          appBar: null,
          
          body:  SafeArea(
            child: Column(
              children:  [
                   Padding(
                  padding: const  EdgeInsets.only(top: 55,right: 252),
                  child: Text('Notely', 
                  style:  GoogleFonts.montserrat(textStyle:  const TextStyle(fontSize: 28,fontWeight: FontWeight.w700, color: Colors.black),)),
                ),
    
                  Padding(padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                  child: SizedBox(
                    height: 50.0,
                    width: 365,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 217, 217, 217),
                        border:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none
                        ),
                        hintText: 'Пошук', 
                        hintStyle: GoogleFonts.montserrat(textStyle: const TextStyle(fontSize: 13.8, fontWeight: FontWeight.w500, color: Colors.black),),
                        contentPadding: const EdgeInsets.only(left: 16),
                      ),
                    ),
                  ),
                  ),
                  
                  Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: GridView.builder(
                            itemCount: notes.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10.0,
                              crossAxisSpacing: 10.0,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              
                              return Card(
                                color: Colors.purpleAccent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      notes[index],
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 20),
                                     
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      )
                       

              ],
               
            ),
            
          ),
        );
      }
  }

