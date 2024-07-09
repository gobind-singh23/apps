import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:i_am_rich/i_am_rich.dart';

//THe main function is the starting point for all the apps.
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(child: Text('I am rich')),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image( image: AssetImage('images/diamond.png'),
            ),
          ),
        ),
      ),
    );
