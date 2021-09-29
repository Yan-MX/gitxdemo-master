import 'package:flutter/material.dart';

final Color color1 = Color(0xFF303133);
final Color color3 = Color(0xFF8D9199);
final Color color4 = Color(0xFFC0C4CC);
final Color red = Color(0xFFFF4040);

//chat list widget for display chats
class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          if (index == 11) {
            //loading next page
          }
          return ChatItem();
        });
  }
}



class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        print('clicked');
      },
      // avatar
      leading:  Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1628191139360-4083564d03fd?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2670&q=80')))),
      title: Row(
        children: <Widget>[
          const Expanded(
              flex: 1,
              child:
              Text('message', style: TextStyle( fontSize: 16))),
          Text('20-02-06', style: TextStyle(color: color4, fontSize: 12))
        ],
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 5),
        //
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Text('message content',
                    style: TextStyle(color: color3, fontSize: 12))),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: red, borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }
}
