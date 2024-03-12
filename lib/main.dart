
import 'package:flutter/material.dart';
// import 'package:flutter_week_codeium/pages/Home/home_page.dart';
import 'package:flutter_week_codeium/pages/Home/home_page2.dart';
import 'package:flutter_week_codeium/pages/pin_login/pin_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLASSROOM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 222, 52, 88)),
        useMaterial3: true,
      ),
      // home: const PinLoginPage(),
      home: const HomePage(),
    );
  }
}

