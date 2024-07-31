import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF6700FA),
      appBar:   AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF6700FA),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildAppBar(),
            const SizedBox(height: 20,),
            quoteClock(),
          ],
        ),
      ),
    );
  }
  Widget buildAppBar(){
    return  Center(
      child: Container(
        color: const Color(0xFF6700FA),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Hi👋 $userName,\nLet\'s Start Preparation',
              style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 18, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              backgroundImage: AssetImage('assets/icons/boys.png'),
            )
          ],
        ),
      ),
    );
  }
  Widget quoteClock(){
    return  Container(
      height: 84,
      width: 327,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xFFFFB3C0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('Don’t watch the clock!\nDo what it does, Keep going.',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF660012),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset('assets/icons/clock.png',height: 50,)
          ],
        ),
      ),
    );
  }
}
