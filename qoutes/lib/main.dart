import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';

void main() => runApp(MaterialApp(
  home: qouteslist(),
));

class qouteslist extends StatefulWidget {
  const qouteslist({Key? key}) : super(key: key);

  @override
  State<qouteslist> createState() => _qouteslistState();
}

class _qouteslistState extends State<qouteslist> {

  List<Qoute> qoutes = [
    Qoute(author: 'Gobind Singh', text: 'Be super voke'),
    Qoute(author: 'Chinki', text: 'Hat teri maa ki chut'),
    Qoute(author: 'Niranjan', text: 'Chup kar bhen ka lund'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qoutes.map((qoute) => QouteCard(
            qoute: qoute,
            delete: () {
              setState(() {
                qoutes.remove(qoute);
              });
            }

        )).toList(),
      ),
    );
  }
}


