import 'package:abc_getx/dialog.dart';
import 'package:abc_getx/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
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
                      ),
                    ],
                  ),
                ),
                barrierColor: Colors.greenAccent.shade100,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      style: BorderStyle.solid,
                      width: 2,
                      color: Colors.yellow,
                    )),
                backgroundColor: Colors.red,
                //enableDrag: true,
              );
            },
            child: Text('Bottom Sheet'),
          ),
          RaisedButton(
            child: Text("Go to Home"),
            onPressed: () {
              Get.to(Dialogue());
            },
          )
        ],
      ),
    );
  }
}
