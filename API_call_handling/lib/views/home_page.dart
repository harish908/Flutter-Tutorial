import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/controller/test_controller.dart';

class HomePage extends StatelessWidget {
  final controller = TestController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TestPage')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                controller.getData();
              },
              child: Text('GET Data', style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
