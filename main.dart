import 'package:flutter/material.dart';

//import 'dart:math';
//enum whyfarther { harder, smarter, selfstarter, tranding }
void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatefulWidget {
  @override
  _Whatsappstate createState() => new _Whatsappstate();
}

class _Whatsappstate extends State<Whatsapp> {
  // enum whyfarther {harder,smarter,selfstarter,tranding}
   Widget simplepop(){
   PopupMenuButton<int>(
                      itemBuilder: (context) =>[
                        PopupMenuItem(
                        value:1,
                        child:Text("first"),
                        ),
                         PopupMenuItem(
                        value:2,
                        child:Text("second"),
                        ),
                      ],
                        
                 );
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.chat),
              backgroundColor: Colors.teal,
            ),
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("WhatsApp"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed:()=>simplepop(),
                   
                  
                ),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    child: IconButton(
                      icon: Icon(Icons.camera),
                      onPressed: () {},
                    ),
                  ),
                  Tab(
                    child: Text("CHATS"),
                  ),
                  Tab(
                    child: Text("STATUS"),
                  ),
                  Tab(
                    child: Text("CALLS"),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Text("page1"),
                ),
                Center(
                  child: Text("page2"),
                ),
                Center(
                  child: Text("page3"),
                ),
                Center(
                  child: Text("page4"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
