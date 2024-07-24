import 'package:flutter/material.dart';
import 'package:quiz_coder/screens/Splash%20Screen/splash_screen.dart';
import 'package:quiz_coder/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF00A6A6),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
