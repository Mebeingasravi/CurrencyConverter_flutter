import 'package:currency_converter/pages/currency_converter_android_page.dart';
import 'package:currency_converter/pages/currency_converter_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAndroidApp());
  // runApp(const MyCupertinoApp());
}

class MyAndroidApp extends StatelessWidget {
  const MyAndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterAndroidPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget{
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context){
    return const CupertinoApp(
      home:CurrencyConverterIOsPage(),
    );
  }
}
