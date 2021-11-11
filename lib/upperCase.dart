import 'package:abc_getx/my_controller.dart';
import 'package:abc_getx/student.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Uppercase extends StatelessWidget {
  //var student = Student();
  //final student = Student(name: "safdar", age: 25).obs;
  MyController mc = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "My name is ${mc.student.name}",
              // "My name is ${student.name.value}",
              style: TextStyle(fontSize: 16),
            ),
          ),
          RaisedButton(
            onPressed: () {
              mc.convertToUppercase();
              //  student.name.value = student.name.value.toUpperCase();
              // student.update((student) {
              //   student.name = student.name.toString().toUpperCase();
              // });
            },
            child: Text("Upper case"),
          )
        ],
      ),
    );
  }
}
