import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled13/fragment/Home.dart';
import 'package:untitled13/fragment/Videos.dart';
import 'package:untitled13/fragment/box.dart';
import 'package:untitled13/fragment/group.dart';

import 'fragment/notification.dart';

class Tabbar extends StatefulWidget {
  @override
  State<Tabbar> createState() => TabbarState();
}

class TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MyTabBar'),
            bottom: TabBar(
              // isScrollable: true,
              indicatorColor: Colors.white,
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 10,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.video_settings), text: 'Video',),
                Tab(icon: Icon(Icons.gif_box),text: 'Box',),
                Tab(icon: Icon(Icons.group),text: 'Group',),
                Tab(icon: Icon(Icons.notifications),text: 'Notification',),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Home(),
              Video('hello'),
              Box(),
              Group(),
              NotificationActivity(),

            ],
          ),

        ),
    );

  }
}
