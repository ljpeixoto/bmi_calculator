import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color(0xFF0A0E21),
        ),
      ),
      initialRoute: 'input',
      routes: {
        'input': (context) => const InputPage(),
        'results': (context) => const ResultsPage(),
      },
    );
  }
}
