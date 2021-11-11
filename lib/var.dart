import 'package:get/get.dart';
import 'package:flutter/material.dart';

class variables extends StatelessWidget {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                "Count value is $count",
                style: TextStyle(fontSize: 18),
              )),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              increment();
            },
            child: Text("increment"),
          )
        ],
      ),
    );
  }
}
