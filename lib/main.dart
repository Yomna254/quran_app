import 'package:flutter/material.dart';
import 'package:quran_app/screens/home_page.dart';

void main() {
  runApp(const quran());
}

class quran extends StatelessWidget {
  const quran({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
