import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 100,width: 100,child: FlutterLogo(size: 50,),),
              Container(height: 100,width: 100,child: FlutterLogo(size: 50,),),
              Container(height: 100,width: 100,child: FlutterLogo(size: 50,),),
              Container(height: 100,width: 100,child: FlutterLogo(size: 50,),),
              Container(height: 100,width: 100,child: FlutterLogo(size: 50,),),
            ],

          ),
          Container(
            width: 250,
            height: 250,
            alignment: Alignment.topRight,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
            padding: EdgeInsets.fromLTRB(20, 30, 30, 40),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color:Colors.black,width: 3)
            ),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Ziaur_Rahman_1979.jpg/330px-Ziaur_Rahman_1979.jpg',
              fit: BoxFit.cover,
            ),

          ),
        ],
      ),


    );
  }

}