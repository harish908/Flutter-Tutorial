import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class GetXBindings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "bindings",
      initialRoute: "/",
      // initialBinding: MainBindings(),
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MainPage(), binding: MainBindings()),
        GetPage(name: '/home', page: () => HomePage(), binding: MainBindings())
      ],
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() =>
                Text('Count : ${Get.find<MainController>().count.value}')),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                Get.find<MainController>().increment();
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: Text('Go to Home'))
          ],
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
          children: [
            Obx(() =>
                Text('Count : ${Get.find<MainController>().count.value}')),
            ElevatedButton(
              child: Text('Increment'),
              onPressed: () {
                Get.find<MainController>().increment();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MainController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}

class MainBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}
