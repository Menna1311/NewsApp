import 'package:flutter/material.dart';
import 'package:news/views/main_screen.dart';

void main() {
  runApp(news());
}

class news extends StatelessWidget {
  const news({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
