import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';

class profile_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rohit', style: TextStyle(color: Colors.grey[350], fontSize: 20),),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: IconButton(icon: Icon(Icons.sports_basketball_outlined, color: Colors.grey,size: 35,), onPressed: (){},),),
            Expanded(child: IconButton(icon: Icon(Icons.groups, color: Colors.grey,size: 35), onPressed:(){} ,),),
            Expanded(child: IconButton(icon: Icon(Icons.circle_outlined, color: Colors.grey,size: 35), onPressed:(){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => circle()),
            );} ,),),
            Expanded(child: IconButton(icon: Icon(Icons.person, color: Colors.grey,size: 35), onPressed: (){},),),
          ],
        ),
      ),
    );
  }
}
