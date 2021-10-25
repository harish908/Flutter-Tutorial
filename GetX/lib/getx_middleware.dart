import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetxMiddleware extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
            name: '/',
            page: () => HomePage(),
            middlewares: [LoginMiddleware(), ProfileMiddleware()]),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
      ],
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('Login Page')],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text('Profile Page')],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text("Home page")],
        ),
      ),
    );
  }
}

class LoginMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  bool isAuth = true;

  @override
  RouteSettings? redirect(String? route) {
    if (!isAuth) {
      return RouteSettings(name: '/login');
    }
  }
}

class ProfileMiddleware extends GetMiddleware {
  @override
  int? get priority => 2;
  bool isAuth = false;

  @override
  RouteSettings? redirect(String? route) {
    if (!isAuth) {
      return RouteSettings(name: '/profile');
    }
  }
}
