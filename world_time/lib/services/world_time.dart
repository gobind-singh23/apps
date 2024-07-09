import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {

  String location = ''; //location name for the UI.
  String time = '';  //the time in that location.
  String flag = ''; //url to an asset flag icon.
  String url = ''; //url for API end points.
  bool isDayTime = false;

  WorldTime({required this.location,required this.flag,required this.url});

  Future<void> getTime() async {
    //make the request

      Response response = await get(
          Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      //get properties from jsondata

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      //Creating a DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
  }
}
