import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/presentation/sign_in/sign_in_page.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SettingPage"),
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: Text("Logout"),
          onPressed: () {
            Get.offAll(SignInPage());
          },
        ),
      ),
    );
  }
}
