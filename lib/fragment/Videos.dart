import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Video extends StatelessWidget{
  String massage;
   Video(
      this.massage,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Activity'),
      ),
      body: Center(
        child: Text(massage),
      ),
    );
  }

}

