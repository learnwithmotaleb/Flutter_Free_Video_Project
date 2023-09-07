import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled13/main.dart';

class Box extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Box Activity'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){HomeActivity().MySnakbar("TextButton", context); }, child: Text('TextButton'),style: HomeActivity().buttonStyle,),
            ElevatedButton(onPressed: (){HomeActivity().MySnakbar("ElevatedButton", context);}, child: Text('ElevatedButton'),style: HomeActivity().buttonStyle,),
            OutlinedButton(onPressed: (){HomeActivity().MySnakbar("OutLineButton", context);}, child: Text('OutlineButton'),style: HomeActivity().buttonStyle,),
            IconButton(onPressed: (){HomeActivity().MySnakbar("IconButton", context);}, icon: Icon(Icons.add,color: Colors.green,),style: HomeActivity().buttonStyle,),
          ],

        ),
      ),
    );
  }

}