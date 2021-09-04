import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_tutorial/presentation/dashboard/dashboard_page.dart';
import 'package:get_x_tutorial/presentation/setting/setting_page.dart';
import 'package:get_x_tutorial/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      getPages: [
        GetPage(
            name: '/',
            page: () => SignInPage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/dashboard',
            page: () => DashboardPage(),
            transition: Transition.cupertino),
        GetPage(
            name: '/setting ',
            page: () => SettingPage(),
            transition: Transition.cupertino),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
    );
  }
}
