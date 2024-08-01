
import 'package:flutter/material.dart';

import '../../../../colors/colors.dart';
import '../../../Quiz Screen/Second Year Quiz/widgets/card_widget.dart';

class SecondYearNotes extends StatelessWidget {
  const SecondYearNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.appColor,
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
                imageAddress: 'assets/icons/math_note.png',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CardWidgets(
                title: 'Biology',
                imageAddress: 'assets/icons/biology_note.png',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CardWidgets(
                title: 'Chemistry',
                imageAddress: 'assets/icons/chemistry_note.png',
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              CardWidgets(
                title: 'Physics',
                imageAddress: 'assets/icons/physics_note.png',
                onTap: () {},
              ),
            ]),
      ),
    );
  }
}
