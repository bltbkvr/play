import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HourItem extends StatelessWidget {
  final String time;
  final String temperature;
  final String IconId;
  const HourItem(
      {Key? key,
      required this.time,
      required this.temperature,
      required this.IconId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            time,
            style: TextStyle(color: Colors.white),
          ),
          Image(
            image:
                NetworkImage("http://openweathermap.org/img/wn/$IconId@2x.png"),
            height: 55,
            width: 55,
          ),
          Text(
            '$temperature°C',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
