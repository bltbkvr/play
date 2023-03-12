import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DayItem extends StatelessWidget {
  final String time;
  final String temperature;
  final String IconId;
  const DayItem(
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
          const Divider(
            height: 5,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.white,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  time,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Image(
                  image: NetworkImage(
                      "http://openweathermap.org/img/wn/$IconId@2x.png"),
                  height: 55,
                  width: 55,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  '$temperature°C',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  '$temperature°C',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
