import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/presentation/sign_in/sign_in_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: Text("Go to SignInPage"),
          onPressed: () {
            Get.to(SignInPage(), transition: Transition.cupertino);
          },
        ),
      ),
    );
  }
}
