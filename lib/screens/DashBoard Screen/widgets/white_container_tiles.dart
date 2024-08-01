import 'package:flutter/material.dart';

class WhiteContainerTiles extends StatelessWidget {
  const WhiteContainerTiles({super.key, required this.title, required this.subtitle, required this.imageAddress, required this.onTap});
  final String title;
  final String subtitle;
  final String imageAddress;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          onTap: onTap,
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Image.asset(imageAddress),
          trailing: Icon(Icons.navigate_next_outlined,color: Color(0xFF6A5AE0),size: 30,),
        ),
      ),
    );
  }
}
