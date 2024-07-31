import 'package:flutter/material.dart';
import 'package:quiz_coder/colors/colors.dart';
import 'package:quiz_coder/screens/Quiz%20Screen/Second%20Year%20Quiz/widgets/card_widget.dart';

class SecondYearQuiz extends StatelessWidget {
  const SecondYearQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.appcolor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CardWidgets(
                title: 'Math',
                imageAddress: 'assets/images/maths.png',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CardWidgets(
                title: 'Biology',
                imageAddress: 'assets/images/lab.png',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CardWidgets(
                title: 'Chemistry',
                imageAddress: 'assets/images/chemistry.png',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CardWidgets(
                title: 'Physics',
                imageAddress: 'assets/images/physics.png',
                onTap: () {},
              ),
            ]),
      ),
    );
  }
}
