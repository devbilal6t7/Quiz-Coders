import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_coder/screens/Notes%20Screen/widgets/First%20Year%20Notes/first_year_notes.dart';
import 'package:quiz_coder/screens/Notes%20Screen/widgets/Second%20Year%20Notes/second_year_notes.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> with SingleTickerProviderStateMixin {
   late final TabController _tabController = TabController(length: 2, vsync: this);

  @override
  void initState() {
    super.initState();
    _tabController ;
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
            const SizedBox(height: 40,),
            Text(
              'Notes For You',
              style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10,),
            Text(
              'Organize your thoughts and key points here.\nAll Notes are Provided Here!',
              style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),
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
                    text: '           First Year             ',

                  ),
                  Tab(
                    text: '         Second Year             ',
                  ),
                ],
                labelColor: Colors.white,
                dividerColor: Colors.transparent,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: -16),
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(
                          255, 180, 180, 180)
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
            const SizedBox(height: 20,),
            // TabBarView for displaying content based on selected tab
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  FirstYearNotes(),
                 SecondYearNotes(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
