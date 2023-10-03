import 'package:desafio1_flutter/pages/intro.dart';
import 'package:flutter/material.dart';

import 'pages/menuPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Intro(),
      routes: {
        'intropage': (context) => const Intro(),
        '/menupage': (context) => const MenuPage(),
      },
    );
  }
}
