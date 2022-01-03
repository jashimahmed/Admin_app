import 'package:admin_app/widget/brand_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
showInToast(String value) {
  Fluttertoast.showToast(
      msg: "$value",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: aPrimaryColor,
      textColor: Colors.red,
      fontSize: 16.0);
}