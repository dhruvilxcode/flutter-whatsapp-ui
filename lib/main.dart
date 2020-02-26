import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/config/config.dart';
import 'package:whatsapp_ui_clone/tabs/CallsTab.dart';
import 'package:whatsapp_ui_clone/tabs/CameraTab.dart';
import 'package:whatsapp_ui_clone/tabs/ChatsTab.dart';
import 'package:whatsapp_ui_clone/tabs/StatusTab.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          backgroundColor: primaryColor,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[

              Tab(
                icon: Icon(Icons.camera_alt),
              ),

              Tab(
                text: "CHATS",
              ),

              Tab(
                text: "STATUS",
              ),

              Tab(
                text: "CALLS",
              ),

            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[

            CameraTab(),
            ChatsTab(),
            StatusTab(),
            CallsTab(),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.chat
          ),
          onPressed: (){},
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}
