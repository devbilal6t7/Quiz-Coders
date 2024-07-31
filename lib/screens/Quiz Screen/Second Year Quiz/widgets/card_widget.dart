import 'package:flutter/material.dart';
import '../../../../colors/colors.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({super.key, required this.title, required this.imageAddress, required this.onTap});
  final String title;
  final String imageAddress;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 80,
        child: Center(
          child: ListTile(
            onTap: onTap,
            leading: CircleAvatar(
                radius: 30,
                backgroundColor: AppColor.appcolor,
                child: Image.asset(imageAddress,height: 40,width: 40,)),
            title:  Text(
              title,
              style: TextStyle(fontSize: 21, fontFamily: 'Rubik',fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(
              Icons.navigate_next,
              color: AppColor.appcolor,
              size: 36,
            ),
          ),
        ),
      ),
    );
  }
}
