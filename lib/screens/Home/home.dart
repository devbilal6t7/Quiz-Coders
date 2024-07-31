import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:quiz_coder/screens/Chat%20Bot/chat_bot.dart';
import 'package:quiz_coder/screens/DashBoard%20Screen/home_screen.dart';
import 'package:quiz_coder/screens/Quiz%20Screen/quiz_screen.dart';
import '../Notes%20Screen/notes_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.userName});
  final String userName;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  late List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      HomeScreen(userName: widget.userName),
      const NotesScreen(),
      const QuizScreen(),
      ChatBot(
        userName: widget.userName,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOut,
        backgroundColor: const Color(0xFF6A5AE0),
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        items: <Widget>[
          Image.asset(
            'assets/icons/dashboard.png',
            height: 20,
            width: 20,
          ),
          Image.asset(
            'assets/icons/notes.png',
            height: 20,
            width: 20,
          ),
          Image.asset(
            'assets/icons/quiz.png',
            height: 20,
            width: 20,
          ),
          Image.asset(
            'assets/icons/chatbot.png',
            height: 20,
            width: 20,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
