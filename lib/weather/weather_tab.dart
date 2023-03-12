import 'package:flutter/material.dart';

class WeatherTab extends StatelessWidget {
  final double top;
  final double left;
  final String title;
  final String value;
  final IconData icon;
  const WeatherTab(
      {Key? key,
      required this.top,
      required this.left,
      required this.title,
      required this.value, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        child: Container(
            width: 150,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(223, 69, 106, 218),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value),
                ),
              ],
            )),
      ),
    );
  }
}
