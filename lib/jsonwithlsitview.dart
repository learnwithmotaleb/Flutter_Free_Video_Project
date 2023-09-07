import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled13/main.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<ListViewPage> createState() => ListViewPageState();
}

class ListViewPageState extends State<ListViewPage> {
  //JsonArray
   var MyItems = [
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

  //ListView Builder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ListView with JsonArray',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                HomeActivity().MySnakbar(MyItems[index]['title']!, context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Image.network(
                              MyItems[index]['img']!,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          MyItems[index]['description']!,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
