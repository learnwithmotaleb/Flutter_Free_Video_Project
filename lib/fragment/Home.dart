import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled13/fragment/Videos.dart';

import 'box.dart';

class Home extends StatelessWidget{

  const Home(
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Video("Hello I am Abdul Motaleb")));
             },
             child: Text('Video Activity'),
           ),
           SizedBox(height: 10,),
           ElevatedButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Box()));
             },
             child: Text('Box Activity'),
           ),
         ],
       ),

     ),
   );
  }

}