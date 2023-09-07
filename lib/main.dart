import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled13/Activity2.dart';
import 'package:untitled13/jsonwithlsitview.dart';

import 'Tapbar.dart';
import 'dynamiclist.dart';

main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'https://lwmsoftltd.com',
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:  HomeActivity() ,
    );

  }
}
class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  MySnakbar(message,context){

    return ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(content: Text(message)),

    );

  }
   ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    padding: EdgeInsets.all(20.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    )

  );
  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text('lwmSoftLTD'),
                content: Text('Are you sure exit'),
                // icon: Icon(Icons.help),
                backgroundColor: Colors.blue,
                elevation: 8,
                shadowColor: Colors.black,
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);

                  }, child: Text('No!'),style: buttonStyle,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2(),),);
                  }, child: Text('Yes!'),style: buttonStyle,),
                ],
              )
          );
        }
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('lwmSoftLTD',style: TextStyle(fontSize: 20,color: Colors.white),),
        titleSpacing: 10,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){MySnakbar("The Search button", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnakbar('The message button', context);}, icon: Icon(Icons.mail)),
          IconButton(onPressed: (){MySnakbar('The Notification', context);}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){MySnakbar('The Setting button', context);}, icon: Icon(Icons.settings)),

        ],
        // shadowColor: Colors.black,
        // leading: ,
        // shape: ShapeBorder,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              MyAlertDialog(context);

            }, child: Text('Show Alert'),style: buttonStyle,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewPage()));
            }, child: Text('ListView Page'),style: buttonStyle,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DaynamicList()));
            }, child: Text('Daynamic List Page'),style: buttonStyle,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Tabbar()));
            }, child: Text('Tabbar Activity'),style: buttonStyle,),
          ],
        ),

      ),





      drawer:Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Center(
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: FlutterLogo(),
                  accountName:Text('lwmSoftltd.com'),
                  accountEmail: Text('example@gmail.com'),
                  onDetailsPressed: (){
                    MySnakbar('This is my profile', context);
                  },
                  decoration: BoxDecoration(
                    color: Colors.orange
                  ),
                ),
              ),
            ),
            ListTile(title: Text('Home'),leading: Icon(Icons.home),onTap: (){MySnakbar("Home", context);},),
            ListTile(title: Text('Share app'),leading: Icon(Icons.share),onTap: (){MySnakbar("Share", context);},),
            ListTile(title: Text('Rate app'),leading: Icon(Icons.star_rate),onTap: (){MySnakbar("Rate", context);},),
            ListTile(title: Text('Policy and Privicy'),leading: Icon(Icons.privacy_tip),onTap: (){MySnakbar('Policy', context);},),
            ListTile(title: Text('About App'),leading: Icon(Icons.question_mark),onTap: (){MySnakbar("About", context);},),
            ListTile(title: Text('help and support'),leading: Icon(Icons.help),onTap: (){MySnakbar("help and support", context);},),

          ],
        ),

      ),
      endDrawer:Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Center(
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: FlutterLogo(),
                  accountName:Text('lwmSoftltd.com'),
                  accountEmail: Text('example@gmail.com'),
                  onDetailsPressed: (){
                    MySnakbar('This is my profile', context);
                  },
                  decoration: BoxDecoration(
                      color: Colors.orange
                  ),
                ),
              ),
            ),
            ListTile(title: Text('Home'),leading: Icon(Icons.home),onTap: (){MySnakbar("Home", context);},),
            ListTile(title: Text('Share app'),leading: Icon(Icons.share),onTap: (){MySnakbar("Share", context);},),
            ListTile(title: Text('Rate app'),leading: Icon(Icons.star_rate),onTap: (){MySnakbar("Rate", context);},),
            ListTile(title: Text('Policy and Privicy'),leading: Icon(Icons.privacy_tip),onTap: (){MySnakbar('Policy', context);},),
            ListTile(title: Text('About App'),leading: Icon(Icons.question_mark),onTap: (){MySnakbar("About", context);},),
            ListTile(title: Text('help and support'),leading: Icon(Icons.help),onTap: (){MySnakbar("help and support", context);},),

          ],
        ),

      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: 0,
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        elevation: 8,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,


        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label: 'message'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'notification'),
        ],
        onTap: (int index){
          if(index ==0){
            MySnakbar("home", context);
          }
          else if(index == 1){
            MySnakbar("dashboard", context);
          }
          else if(index == 2){
            MySnakbar("message", context);
          }
          else if(index == 3){
            MySnakbar("search", context);

          }
          else if(index == 4){
            MySnakbar("Notification", context);
          }

        },

      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){MySnakbar("The Floating ActionButton", context);},
        elevation: 10,
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.blue,

      ),

    );

  }

}