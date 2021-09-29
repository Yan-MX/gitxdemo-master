import 'package:flutter/material.dart';
import 'package:navigationdemo/Screens/Chat/chat_detail_screen.dart';
import 'package:navigationdemo/Models/message_model.dart';

class FavoriteContacts extends StatefulWidget {
  const FavoriteContacts({Key? key}) : super(key: key);

  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

// including two parts one is title with a icon( select more), second is avatar and name of contacts
class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Favorite Contacts',
                        style: TextStyle(
                          //color: Colors.blueGrey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                        ),
                        iconSize: 30.0,
                        // color: Colors.blueGrey,
                        onPressed: () {},
                      ),
                    ]),
              ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              ChatDetailScreen()))
                },
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: const <Widget>[
                      CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1628191139360-4083564d03fd?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2670&q=80')),
                      SizedBox(height: 6.0),
                      Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
