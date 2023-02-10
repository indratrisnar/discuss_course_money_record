import 'package:flutter/material.dart';

import 'solution/home_method.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            ElevatedButton(
              onPressed: () {
                HomeMethod.setMinusValue();
              },
              child: const Text('Home - setMinusValue'),
            ),
          ],
        ),
      ),
    );
  }
}
