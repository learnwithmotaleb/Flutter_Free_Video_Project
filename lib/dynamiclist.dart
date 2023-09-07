import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'jsonwithlsitview.dart';
import 'main.dart';

class DaynamicList extends StatefulWidget {
  @override
  State<DaynamicList> createState() => DaynamicListState();
}

class DaynamicListState extends State<DaynamicList> {
  //jsonArray
  //GridView
  //Gestere Dete
  var MyItems2 = [
    {
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Ziaur_Rahman_1979.jpg/330px-Ziaur_Rahman_1979.jpg',
      'title': 'Ziaur Rahman',
      'description': 'This is ziaur rahman description'
    },
    {
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg',
      'title': 'Bill Gates',
      'description': 'This is Bill Gates description'
    },
    {
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg/330px-Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg',
      'title': 'Mark Zuckerberg',
      'description': 'This is Mark Zuckerberg description'
    },
    {
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Sundar_Pichai_%282023%29_cropped.jpg/330px-Sundar_Pichai_%282023%29_cropped.jpg',
      'title': 'Sundar Pichai',
      'description': 'This is Sundar Pichai description'
    },
    {
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg/330px-Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg',
      'title': 'Steve Jobs',
      'description': 'This is Steve Jobs description'
    },
    {
      'img':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Jeff_Bezos_visits_LAAFB_SMC_%283908618%29_%28cropped%29.jpeg/330px-Jeff_Bezos_visits_LAAFB_SMC_%283908618%29_%28cropped%29.jpeg',
      'title': 'Jeff Bezos',
      'description': 'This is Jeff Bezos description'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Grid List View',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: GridView.builder(
          itemCount: MyItems2.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                HomeActivity().MySnakbar(MyItems2[index]['title']!, context);
              },
              child: Image.network(
                MyItems2[index]['img']!,
                fit: BoxFit.cover,
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            // mainAxisExtent: 2,
            // childAspectRatio: 1.2
          ),
        ));
  }
}
