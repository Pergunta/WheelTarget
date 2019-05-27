
import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/notifications/chatscreen.dart';


class ChatPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Jack"),
      ),
      body: new ChatScreen()
    ); 
  }
}