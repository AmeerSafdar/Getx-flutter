import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('Show Dialogue'),
            onPressed: () {
              // Get.defaultDialog();
              Get.defaultDialog(
                title: "Ameer Safdar",
                titleStyle: TextStyle(fontSize: 20),
                middleText: "I am Student",
                middleTextStyle: TextStyle(fontSize: 16),
                backgroundColor: Colors.green,
                radius: 50,
                content: Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 15),
                    Expanded(child: Text("Data Loading"))
                  ],
                ),
                textCancel: "cancel",
                cancelTextColor: Colors.white,
                textConfirm: "Confirm",
                confirmTextColor: Colors.white,
                onCancel: () {},
                onConfirm: () {},
                buttonColor: Colors.red,
                // cancel: Text(
                //   "CANCELS",
                //   style: TextStyle(fontSize: 12),
                // ),
                // confirm: Text(
                //   "CONFIRM",
                //   style: TextStyle(fontSize: 16),
                // )
                barrierDismissible: false,
              );
            },
          )
        ],
      ),
    );
  }
}
