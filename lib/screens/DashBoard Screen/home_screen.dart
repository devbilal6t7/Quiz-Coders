import 'package:flutter/material.dart';
import 'package:quiz_coder/colors/colors.dart';
import 'package:quiz_coder/screens/DashBoard%20Screen/widgets/white_container_tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A5AE0),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          buildAppBar(),
          const SizedBox(height: 20,),
          quoteClock(),
          const SizedBox(height: 20,),
          emptyContainer(),
          const SizedBox(height: 20,),
          Expanded(child: whiteContainer()), // Use Expanded to allow whiteContainer to scroll
        ],
      ),
    );
  }
  Widget emptyContainer(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 211,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white24,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/hi.png',width: 48,height: 48,),
                  const SizedBox(width: 60,),
                  const Text('FEATURED',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                        color: Colors.white70,
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Center(
                child: Text(
                  'Take part in challenges with\n friends or other players',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 60,),
                  Image.asset('assets/icons/by.png',width: 55,height: 55,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildAppBar() {
    return Center(
      child: Container(
        color: const Color(0xFF6A5AE0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Hi👋 $userName,\nLet\'s Start Preparation',
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 20, fontWeight: FontWeight.bold,),
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

  Widget quoteClock() {
    return Container(
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('Don’t watch the clock!\nDo what it does, Keep going.',
                style:TextStyle(
                  fontSize: 17,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF660012),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset('assets/icons/clock.png', height: 50,)
          ],
        ),
      ),
    );
  }

  Widget whiteContainer() {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Live Quizzes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Text('View All',style:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF6A5AE0)),)
              ],
            ),
            SizedBox(height: 10,),
            WhiteContainerTiles(),
            SizedBox(height: 20,),
            WhiteContainerTiles(),
            SizedBox(height: 20,),
            WhiteContainerTiles(),
          ],
        ),
      ),
    );
  }
}
