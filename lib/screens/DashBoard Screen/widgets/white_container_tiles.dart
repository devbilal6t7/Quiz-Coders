import 'package:flutter/material.dart';

class WhiteContainerTiles extends StatelessWidget {
  const WhiteContainerTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          onTap: (){},
          title: Text('Tile 1'),
          subtitle: Text('math'),
          leading: Icon(Icons.check_circle),
          trailing: Icon(Icons.navigate_next_outlined,color: Color(0xFF6A5AE0),size: 30,),
        ),
      ),
    );
  }
}
