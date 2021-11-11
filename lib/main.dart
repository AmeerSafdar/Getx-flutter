import 'package:abc_getx/bottomsheet.dart';
import 'package:abc_getx/dialog.dart';
import 'package:abc_getx/snackbar.dart';
import 'package:abc_getx/upperCase.dart';
import 'package:abc_getx/var.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'GetX',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('GetX'),
            ),
            body:Bottomsheet()));
  }
}
