import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("Show Snackbar"),
            onPressed: () {
              Get.snackbar(
                "hello world", 'my name is Ameer Safdar',
                snackPosition: SnackPosition.BOTTOM,
                colorText: Colors.red,
                backgroundColor: Colors.green,
                borderRadius: 30,
                // borderColor: Colors.yellow
                margin: EdgeInsets.all(10),
                //maxWidth: 100
                animationDuration: Duration(milliseconds: 3000),
                // backgroundGradient:
                //     LinearGradient(colors: [Colors.red, Colors.blue])
                borderColor: Colors.yellow,
                borderWidth: 4,
                isDismissible: true,
                dismissDirection: SnackDismissDirection.HORIZONTAL,
                forwardAnimationCurve: Curves.bounceInOut,
                duration: Duration(milliseconds: 8000),
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                leftBarIndicatorColor: Colors.white,
                mainButton: FlatButton(onPressed: null, child: Text('Retry')),
                showProgressIndicator: true,
                progressIndicatorBackgroundColor: Colors.blue,
                overlayColor: Colors.grey,
                progressIndicatorValueColor:
                    AlwaysStoppedAnimation<Color>(Colors.white),
                reverseAnimationCurve: Curves.bounceInOut,
                // userInputForm: Form(
                //     child: Row(
                //   children: [Expanded(child: TextField())],
                // ))
              );
            },
          )
        ],
      ),
    );
  }
}
