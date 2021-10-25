import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show snackbar'),
          onPressed: () {
            Get.snackbar('Snackbar Title', 'message',
                snackPosition: SnackPosition.BOTTOM,
                borderRadius: 30,
                backgroundColor: Colors.red[100],
                animationDuration: Duration(milliseconds: 200));
          },
        ),
      ),
    );
  }
}

class DialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Dialogbox'),
          onPressed: () {
            Get.defaultDialog(
                title: 'Dialogbox',
                radius: 20,
                backgroundColor: Colors.green[100],
                content: Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(child: Text('Data Loading'))
                  ],
                ),
                textCancel: 'Cancel',
                textConfirm: 'Confirm',
                barrierDismissible: false);
          },
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show BottomSheet'),
          onPressed: () {
            Get.bottomSheet(
              Container(
                child: Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.wb_sunny_outlined),
                      title: Text('Light Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Dark Theme'),
                      onTap: () {
                        Get.changeTheme(ThemeData.dark());
                      },
                    )
                  ],
                ),
              ),
              backgroundColor: Colors.red[200],
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                    color: Colors.white, width: 2, style: BorderStyle.solid),
              ),
            );
          },
        ),
      ),
    );
  }
}
