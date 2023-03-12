import 'package:flutter/material.dart';

import 'hour_item.dart';

class WeatherHourlyTab extends StatelessWidget {
  const WeatherHourlyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(223, 69, 106, 218),
              ),
              height: 160,
              width: 500,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.0, horizontal: 10.0),
                    child: Text(
                      "Sunny conditions will conrinue all day. Wind gusts are p too 7 mph",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  const Divider(
                    height: 5,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.white,
                  ),
                  Row(
                    children: [
                      HourItem(time: "11AM", temperature: "13", IconId: "10d"),
                      HourItem(time: "11AM", temperature: "13", IconId: "10d"),
                      HourItem(time: "11AM", temperature: "13", IconId: "10d"),
                      HourItem(time: "11AM", temperature: "13", IconId: "10d"),
                      HourItem(time: "11AM", temperature: "13", IconId: "10d"),
                    ],
                  )
                ],
              )),
        ),
        // Padding(
        //   padding:
        //       const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        //   child: Container(
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: Color.fromARGB(223, 69, 106, 218),
        //       ),
        //       height: 300,
        //       width: 500,
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.symmetric(
        //                 vertical: 3.0, horizontal: 10.0),
        //             child: Text(
        //               "Weather forecast for the week",
        //               style: TextStyle(fontSize: 17, color: Colors.white),
        //             ),
        //           ),
        //           Column(
        //             children: [
        //               DayItem(
        //                   time: "11AM", temperature: "13", IconId: "10d"),
        //               DayItem(
        //                   time: "11AM", temperature: "13", IconId: "10d"),
        //               DayItem(
        //                   time: "11AM", temperature: "13", IconId: "10d"),
        //               DayItem(
        //                   time: "11AM", temperature: "13", IconId: "10d"),
        //             ],
        //           )
        //         ],
        //       )),
        // ),
      ],
    );
  }
}
