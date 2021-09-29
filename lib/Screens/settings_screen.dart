import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:navigationdemo/Screens/settings_profile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _toggel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: _settingLists(),
    );
  }

  Widget _settingLists() {

    return ListView(
      children:  <Widget>[
         ListTile(
          trailing: Icon(Icons.face),
          subtitle:Text("Edit your profile"),
          title: Text('Profile'),
          onTap: () { Get.to(SettingProfile());},
        ),
        SwitchListTile(
          title: Text('Theme'),
          subtitle:Text("Change between light and dark mode"),
          value: _toggel,
          onChanged: (bool value) {
            setState(() {
              _toggel = value;
            });
          },
        ),
        const ListTile(
          trailing: Icon(Icons.phone),
          subtitle:Text("Call our support"),
          title: Text('Support'),
        ),
      ],
    );
  }
}
