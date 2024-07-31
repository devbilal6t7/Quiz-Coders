import 'package:flutter/material.dart';
import 'package:quiz_coder/screens/Quiz%20Screen/First%20Year%20Quiz/first_year_quiz.dart';
import 'package:quiz_coder/screens/Quiz%20Screen/Second%20Year%20Quiz/second_year_quiz.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  void initState() {
    super.initState();
    _tabController;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Quizzes For You',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Test your knowledge and sharpen your skills with\nengaging and interactive quizzes.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            // TabBar for button selection
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: const Border(
                  left: BorderSide(color: Color(0xFF6A5AE0)),
                  top: BorderSide(color: Color(0xFF6A5AE0)),
                  right: BorderSide(color: Color(0xFF6A5AE0)),
                  bottom: BorderSide(color: Color(0xFF6A5AE0)),
                ),
              ),
              child: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(
                    text: 'First Year Quiz',
                  ),
                  Tab(
                    text: 'Second Year Quiz',
                  ),
                ],
                labelColor: Colors.white,
                dividerColor: Colors.transparent,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: -2),
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 180, 180, 180)
                          .withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: const Color(0xFF6A5AE0),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // TabBarView for displaying content based on selected tab
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  FirstYearQuiz(),
                  SecondYearQuiz(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
