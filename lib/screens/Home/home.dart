import 'package:flutter/material.dart';
import 'package:quiz_coder/screens/Chat%20Bot/chat_bot.dart';
import 'package:quiz_coder/screens/DashBoard Screen/home_screen.dart';
import 'package:quiz_coder/screens/Quiz%20Screen/quiz_screen.dart';
import '../Notes Screen/notes_screen.dart';

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
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: const Color(0xFF00A6A6),
              borderRadius: BorderRadius.circular(10)),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF00A6A6),
            unselectedItemColor: const Color(0xFF00A6A6),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.dashboard_customize_outlined), label: 'Dashboard'),
              BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Notes'),
              BottomNavigationBarItem(icon: Icon(Icons.quiz), label: 'Quiz'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat), label: 'Chat GPT'),
            ],
          )),
    );
  }
}
