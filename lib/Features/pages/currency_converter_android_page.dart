import 'package:flutter/material.dart';

/**
** Currency Converter Home page
*! it has functionality to convert usdt to INR
*? Color checking for questions mark
* todo: Enter Number in the text box and press convert button
* @param No parameters
* @throws no error
*/
/// End ///

class CurrencyConverterAndroidPage extends StatefulWidget {
  const CurrencyConverterAndroidPage({super.key});

  @override
  State<CurrencyConverterAndroidPage> createState() => _CurrencyConverterPage();
}

//// Earlier it was an StatelessWidget

class _CurrencyConverterPage extends State<CurrencyConverterAndroidPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
      // print('result in elevated button $result');
      debugPrint("result $result");
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("result in beginning $result");

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 125, 139),
        elevation: 0,
        title: const Text(
          'Currency Converter',
          // style: TextStyle(color: Colors.white),
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 96, 125, 139),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /**
             ** Result Screen
             * It Shows, After calculating user Enter USD into Indian Rupee and 
             * print in below Text Widget.
             */
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'INR ${result!=0?result.toStringAsFixed(2):result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            /**
             ** Input button
             *  User can Enter any Positive Number with decimal to check it's rate converted 
             *  to INR
             *! Only Allow to Enter Number
             */
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 40, 39, 39),
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  label: const Text("Please Enter the amount in USD"),
                  // labelText: "Please Enter the amount in USD",
                  labelStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  // hintText: "Enter Amount here",
                  hintStyle: const TextStyle(color: Colors.black),
                  prefix: const Text("\$"),
                  // prefixIcon: const Icon(Icons.monetization_on_outlined),
                  suffixIcon: const Icon(Icons.currency_rupee_sharp),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
              ),
            ),
            /**
             ** Convert Button
             * Once /Convert Button/ called it ask setState to change the value of Result.
             * So it can be changed in Result Text.
             */
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: convert,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
