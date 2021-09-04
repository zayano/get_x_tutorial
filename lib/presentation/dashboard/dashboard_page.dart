import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/presentation/setting/setting_page.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(Get.parameters.toString()),
            Text("Token : " +
                (Get.arguments as List<String>)
                    .map((e) => e)
                    .toList()
                    .toString()),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text("Go to SettingPage"),
              onPressed: () {
                Get.to(SettingPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
