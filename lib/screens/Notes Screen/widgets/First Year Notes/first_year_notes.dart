
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstYearNotes extends StatelessWidget {
  const FirstYearNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Content for Button 1',
        style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.normal),
      ),
    );
  }
}
