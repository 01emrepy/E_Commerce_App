import 'package:e_commerce/features/home/view/home.dart';
import 'package:e_commerce/features/home/viewmodel/home_view_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      theme: ThemeData(),
      home: name(),
    );
  }
}
