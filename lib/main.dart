import 'package:flutter/material.dart';
import 'early/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Software',
      home: Scaffold(
        body: HomeView(),
      ),
    );
  }
}
