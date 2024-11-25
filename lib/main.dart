import 'package:flutter/material.dart';
import 'package:login_and_signup/login_page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Testing Purpose",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: false,
          fontFamily: "Regular"
      ),
      home: const LoginPage(),
    );
  }
// This widget is the root of your application
}
