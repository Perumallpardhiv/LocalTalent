import 'package:flutter/material.dart';
import 'package:local_talent/homeScreen.dart';
import 'package:local_talent/onboarding1.dart';
import 'package:local_talent/onboarding2.dart';
import 'package:local_talent/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(),
        primarySwatch: Colors.blue,
      ),
      home: homePage(),
    );
  }
}
