/// Flutter code sample for BottomNavigationBar

import 'package:flutter/material.dart';
import 'package:navigationdemo/Controller/home_controller.dart';
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
  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    List<Widget> _widgetOptions = <Widget>[
      Obx(() =>
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${homeController.count}"
              ),
              ElevatedButton(onPressed: () {
                homeController.increment();
              }, child: Text("Add")),
            ],
          ),),
      // HomeScreen(),
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
                icon: Icon(Icons.business),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Setting',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.teal,
            onTap: _onItemTapped,
          ),
        ),
        theme: ThemeData.dark(),);
  }
}

