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
      ChatBot(userName: widget.userName,),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeOut,
        backgroundColor: const Color(0xFF6A5AE0),
        color:  Colors.white,
        buttonBackgroundColor:Colors.white,
        height: 60,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.dashboard_customize_outlined, size: 20, color:  Color(0xFF6A5AE0)),
          Icon(Icons.note, size: 20, color: Color(0xFF6A5AE0)),
          Icon(Icons.quiz, size: 20, color: Color(0xFF6A5AE0)),
          Icon(Icons.chat, size: 20, color: Color(0xFF6A5AE0)),
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
