import 'package:flutter/material.dart';
import 'package:my_toku_language_learning_app/Screens/my_home_page.dart';

void main() {
  runApp(const MyTokuLanguageLearningAPP());
}

class MyTokuLanguageLearningAPP extends StatelessWidget {
  const MyTokuLanguageLearningAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
