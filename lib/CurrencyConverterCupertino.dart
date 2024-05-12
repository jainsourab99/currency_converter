import 'package:flutter/cupertino.dart';

class CurrencyCOnverterCupertinoPage extends StatefulWidget {
  const CurrencyCOnverterCupertinoPage({super.key});

  @override
  State<CurrencyCOnverterCupertinoPage> createState() =>
      _CurrencyCOnverterCupertinoPage();
}

class _CurrencyCOnverterCupertinoPage
    extends State<CurrencyCOnverterCupertinoPage> {
  double result = 0;
  @override
  Widget build(BuildContext context) {
    print("BuildContext");
    TextEditingController textEditingController = TextEditingController();
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text("Currency Converter"),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CupertinoTextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: "Please enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
              ),
              const SizedBox(
                height: 20,
              ),
              // Button
              // 1. Raised
              // 2. Appear
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                    print("result $result");
                  });
                },
                color: CupertinoColors.black,
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
