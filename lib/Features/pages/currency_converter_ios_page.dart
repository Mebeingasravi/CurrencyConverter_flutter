import "package:flutter/cupertino.dart";

class CurrencyConverterIOsPage extends StatefulWidget {
  const CurrencyConverterIOsPage({super.key});

  @override
  State<CurrencyConverterIOsPage> createState() =>
      _CurrencyConverterIOsPageState();
}

class _CurrencyConverterIOsPageState extends State<CurrencyConverterIOsPage> {
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
    debugPrint("result in beginning in cupertino $result");

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 96, 125, 139),
        middle: Text(
          'Currency Converter',
          // style: TextStyle(color: Colors.white),
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 96, 125, 139),
      child: Center(
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
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
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
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 40, 39, 39),
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: 'Please enter amount in USD',
                placeholderStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                prefix: const Icon(CupertinoIcons.money_dollar),
                suffix: const Icon(CupertinoIcons.money_euro),
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
              child: CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text(
                  'Convert',
                  selectionColor: CupertinoColors.white,
                  style: TextStyle(color: CupertinoColors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
