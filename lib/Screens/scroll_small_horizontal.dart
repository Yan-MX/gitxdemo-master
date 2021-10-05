import 'package:flutter/material.dart';

class ScrollSmallHorizontal extends StatefulWidget {
  const ScrollSmallHorizontal({Key? key}) : super(key: key);

  @override
  _TestingScreenState createState() => _TestingScreenState();
}

class _TestingScreenState extends State<ScrollSmallHorizontal> {

  int selectedIndex = 0;
  final List<String> categories = ["Loremaaaaaa", "ipsui", "dolor", "sit"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      //color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },

            child: Container(
              padding: const EdgeInsets.all(20.0),
            margin:const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
            color: index == selectedIndex
            ? Theme.of(context).primaryColor: Theme.of(context).hintColor,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Text(
                categories[index],
                style: TextStyle(
                    color: index == selectedIndex
                        ? Colors.white
                        : Colors.white70,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
