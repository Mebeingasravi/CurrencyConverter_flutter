import 'package:currency_converter/Features/pages/currency_converter_android_page.dart';
import 'package:currency_converter/Features/pages/currency_converter_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// Currency Converter in Material Design(Android)
///
class MyAndroidApp extends StatelessWidget {
  const MyAndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterAndroidPage(),
    );
  }
}

///
/// Currency Converter in Cupertino Design(IOs)
///
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterIOsPage(),
    );
  }
}
