/// Flutter code sample for BottomNavigationBar

import 'package:flutter/material.dart';
import 'package:navigationdemo/Controller/home_controller.dart';
import 'Screens/photo_screen.dart';
import 'Screens/settings_screen.dart';
import 'Screens/Chat/chat_screen.dart';
import 'Screens/home_screen.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
   // final homeController = Get.put(HomeController());


    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    List<Widget> _widgetOptions = <Widget>[
      HomeScreen(),
      PhotoScreen(),
      ChatScreen(),
      SettingScreen(),
    ];


    return GetMaterialApp(
        title: "demo",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 2.0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.photo),
                label: 'Photo',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Setting',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor:Theme.of(context).hintColor ,
            onTap: _onItemTapped,
          ),
        ),
        theme: ThemeData.dark(),);
  }
}

