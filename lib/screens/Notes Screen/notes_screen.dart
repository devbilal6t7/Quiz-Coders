import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

          ],
        ),
      ),
    );
  }
}
