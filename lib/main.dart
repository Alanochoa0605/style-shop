import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const StyleShopApp());
}

class StyleShopApp extends StatelessWidget {
  const StyleShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Style Shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}