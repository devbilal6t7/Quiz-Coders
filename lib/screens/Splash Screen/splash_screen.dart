import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_coder/screens/Home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:page_transition/page_transition.dart';
import '../DashBoard Screen/home_screen.dart';
import '../Start Screen/start_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? userName;
  Future<void> loadUserName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      userName = pref.getString('userName');
    });
  }

  @override
  void initState() {
    super.initState();
    loadUserName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.black,
        child: AnimatedSplashScreen(
          backgroundColor: Colors.black,
          splashIconSize: 400,
          pageTransitionType: PageTransitionType.bottomToTop,
          duration: 1600,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/logo.png',
              ),
            ],
          ),
          nextScreen: userName != null && userName!.isNotEmpty
              ? Home(userName: userName!)
              : const StartScreen(),
        ),
      ),
    );
  }
}
