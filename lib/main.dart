import 'package:currency_converter/Features/cupertino_and_material_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * ! Important - To Try Android or IOs Design for this app
 * ? You can try commeting one line and uncomming another one in main function 
 */
///
void main() {
  runApp(const MyAndroidApp());
  // Un-Comment the below Line and comment the above line to enable Cupertio (IOs) UI.
  runApp(const MyCupertinoApp());
}