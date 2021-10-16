import 'package:flutter/material.dart';
import 'package:flutter_app/views/home_page.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
