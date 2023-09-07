import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled13/fragment/box.dart';

class Group extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.green,
              elevation: 80,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text('Group Card!',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),

              ),
          ],
        ),
      ),
    );
  }

}