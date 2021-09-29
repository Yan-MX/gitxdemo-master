import 'package:flutter/material.dart';
import 'package:navigationdemo/Widgets/Chat/catrgory_selector.dart';
import 'package:navigationdemo/Widgets/Chat/recent_chats.dart';
import '../../Widgets/Chat/favorite_contact.dart';

// chat screen
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Chat',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, letterSpacing: 1.2),
        )),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Column(children: <Widget>[
        //category selector level 1
        CategorySelector(),
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).dialogBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: Column(
                children: <Widget>[
                  //fav contacts with avartar and name
                  FavoriteContacts(),
                  RecentChats()
                ],
              )),
        )
      ]),
    );
  }
}

