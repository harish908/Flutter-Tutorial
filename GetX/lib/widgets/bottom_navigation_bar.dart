import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: BottomNavigationBarWidget(),
      initialBinding: MainBindings(),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  final screens = [HomePage(), ProfilePage()];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      return IndexedStack(
        index: Get.find<BottomNavigationController>().currentPage.value,
        children: screens,
      );
    }), bottomNavigationBar: Obx(() {
      return BottomNavigationBar(
        currentIndex: Get.find<BottomNavigationController>().currentPage.value,
        onTap: (index) =>
            Get.find<BottomNavigationController>().changeCurrentPage(index),
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      );
    }));
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

class BottomNavigationController extends GetxController {
  var currentPage = 0.obs;

  void changeCurrentPage(var index) {
    currentPage.value = index;
  }
}

class MainBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationController>(() => BottomNavigationController());
  }
}
