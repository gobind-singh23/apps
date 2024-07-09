import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'profile.dart';

void main() => runApp(MaterialApp(
  home: circle(),
));

class circle extends StatelessWidget {
  const circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rohit', style: TextStyle(color: Colors.grey[350], fontSize: 20),),
        actions: [
      TextButton(onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('This is a button which can do shit'))
        );
        },
        child: Text("Name", style: TextStyle(color: Colors.orange, fontSize: 20),),)
        ],
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: IconButton(icon: Icon(Icons.sports_basketball_outlined, color: Colors.grey,size: 35,), onPressed: (){},),),
            Expanded(child: IconButton(icon: Icon(Icons.groups, color: Colors.grey,size: 35), onPressed:(){} ,),),
            Expanded(child: IconButton(icon: Icon(Icons.circle_outlined, color: Colors.grey,size: 35), onPressed:(){} ,),),
            Expanded(child: IconButton(icon: Icon(Icons.person, color: Colors.grey,size: 35), onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => profile_page()),
            );},),),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                      width: 90,
                      height: 150,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                      width: 90,
                      height: 150,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                      width: 90,
                      height: 150,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                      width: 90,
                      height: 150,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                      width: 90,
                      height: 150,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                      width: 90,
                      height: 150,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                      width: 90,
                      height: 150,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),

                  ],
                ),
              ),
              Container(
                child: Container(
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search, color: Colors.black,
                      ),
                      Center(
                        child: Container(
                          width: 200,
                          color: Colors.grey,
                          child: Center(child: Text('search button'),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 349,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                        width: 300,
                        height: 330,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                        width: 300,
                        height: 330,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                        width: 300,
                        height: 330,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                        width: 300,
                        height: 330,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                        width: 300,
                        height: 330,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Center(child: Text('Gobind', style: TextStyle(color: Colors.white),)),
                        width: 300,
                        height: 330,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.black,
        child:  ListView(
        children: [
            ElevatedButton(onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => circle()),
            );}, child: Text('I suck cock')),
      ListTile(
        title: Center(child: Text("Followers", style: TextStyle(color: Colors.white, fontSize: 30),))
        ,
      ),
      ListTile(
        title: Center(child: Text("Ccommunity", style: TextStyle(color: Colors.white, fontSize: 30),)),
      ),
      ListTile(
        title: Center(child: Text("Help", style: TextStyle(color: Colors.white, fontSize: 30),)),
      ),
      ListTile(
        title: Center(child: Text("About", style: TextStyle(color: Colors.white, fontSize: 30),)),
      ),
      ListTile(
        title: Center(child: Text("Developers", style: TextStyle(color: Colors.white, fontSize: 30),)),
      ),
      ],
    )
    ),
    );
  }
}


