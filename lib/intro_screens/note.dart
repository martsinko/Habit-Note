
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:program/pages/home.dart';



class Note extends StatefulWidget {
  const Note({super.key});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {

TextEditingController controller = TextEditingController();
TextEditingController control = TextEditingController();
  
    String zag = '';
  String vm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
             Padding(
              padding: const EdgeInsets.only(top: 55, left: 11),
              child: Row(
                
                children: [
                  Wrap(
                    spacing: -6,
                    children: [
                  
                          IconButton(
                        
                icon: const Icon(
                  size: 27.0,
                  Icons.arrow_back, color: Colors.black,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
                         
                            
                           Padding(
                             padding: const EdgeInsets.only(top:12.0),
                             child: Text('Notes', style: GoogleFonts.montserrat(
                textStyle: const  TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                )
               ),),
                           ),
                    ]     
                  ),  

                  Padding(
                    padding: const EdgeInsets.only(left:230.0, right: 11),
                    child: IconButton( 
                icon: const Icon(
                    size: 27.0,
                    Icons.more_horiz, color: Colors.black,),
                onPressed: () {
                    showModalBottomSheet(context: context,builder: (BuildContext context){
                        return SizedBox(
                          height: 150,
                          child: ListView(
                            children:  [
                              TextButton(onPressed: (){
                                 zag = controller.text;
                                vm = control.text;
                            FirebaseFirestore.instance.collection('items').add({'zag': zag, 'vm': vm});
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Home();
                            },));

                              }, child: Text('Зберегти нотатку', style: GoogleFonts.montserrat(
                                    textStyle: const  TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)
                              ),)),
                                 TextButton(onPressed: null, child: Text('Змінити нотатку',style: GoogleFonts.montserrat(
                                    textStyle: const  TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)
                              ))),
                                  TextButton(onPressed: null, child: Text('Поділитися нотаткою',style: GoogleFonts.montserrat(
                                    textStyle: const  TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)
                              )))
                            ],
                          ),
                        );
                    }
                    );
                },
              ),
                  ),    
                ],
              )
            ),



          Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 11, right: 11),
            child: SizedBox(
              
              width: 390,
              child: TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {
                   zag = value;
                  });
                },
                maxLines: null,
               style: GoogleFonts.montserrat(
                textStyle: const  TextStyle(
                  wordSpacing: -1,
                  fontSize: 28.5,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                )
               ),
                decoration:   InputDecoration(
                  contentPadding: const  EdgeInsets.only(top: 0, left: 10 ),
                  filled: false,
                  hintText: 'Заголовок', 
                  hintStyle: GoogleFonts.montserrat(
                textStyle: const   TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700
                )
               ),
                  
                  border: const  OutlineInputBorder(
                    borderSide: BorderSide.none
                  ) 
                ),
              ),
            ),
          ),

            Padding(
             padding: const EdgeInsets.only(top: 7, left: 11, right: 11),
             child: TextField(
              controller: control,
              onChanged: (value) {
                  setState(() {
                    vm = value;
                  });
                },
              style: GoogleFonts.montserrat(
                textStyle: const  TextStyle(
                 fontSize: 16,
                 color: Colors.black,
                 fontWeight: FontWeight.w500
                )
              ),
                maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration:  InputDecoration(
            hintText: 'Зміст вашого запису',
            hintStyle: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.grey, fontSize: 19, fontWeight: FontWeight.w700)),
              contentPadding: const  EdgeInsets.only(left: 13, top: 0.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              
                ),
                    ),
           )
        ],
      )
    );
  }
}