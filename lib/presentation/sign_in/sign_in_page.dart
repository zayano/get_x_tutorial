import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/presentation/dashboard/dashboard_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignInPage"),
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: Text("Go To DashboardPage"),
          onPressed: () {
            token = "testTokenData";
            Get.offNamed("/dashboard?name=zayano", arguments: ["Nama", "Saya"]);
            // Get.offNamed("/dashboard");
          },
        ),
      ),
    );
  }
}
