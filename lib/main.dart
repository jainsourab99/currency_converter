import 'package:currency_converter/CurrencyConverterCupertino.dart';
import 'package:flutter/cupertino.dart';

import './pages/Currency_Converter_material_page.dart'; // relative importing
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCupertinoApp());
}

// Type of Widgets
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget

// State State is data which we care about it

// 1. Material Design by Google
// 2. Cupertino Design by Apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyCOnverterCupertinoPage(),
    );
  }
}
