import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_page/home_page.dart';
import 'color_bloc.dart';

class RakhatApp extends StatefulWidget {
  const RakhatApp({Key? key}) : super(key: key);

  @override
  _RakhatAppState createState() => _RakhatAppState();
}
//=======================================================

class _RakhatAppState extends State<RakhatApp> {
  var counter = 0;

  var startTime = Duration(hours: 9);
  var endTime = Duration(hours: 18);
  var interval = Duration(minutes: 30);
  double price = 1500;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, MaterialColor>(
        builder: (context, state) => MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: state,
              ),
              home: const MyHomePage(),
            ));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       title: 'Flutter Demo',
  //       theme: ThemeData(
  //         primarySwatch: color,
  //       ),
  //       home: BlocProvider(
  //         create: ((context) => MonkeyCubit()),
  //         child: SchedulePage(
  //           startTime: startTime,
  //           endTime: endTime,
  //           price: price,
  //           interval: interval,
  //           title: 'Just some title',
  //           availableSlots: [
  //             Duration(hours: 9, minutes: 30),
  //             Duration(hours: 10),
  //             Duration(hours: 10, minutes: 30),
  //             Duration(hours: 14, minutes: 30),
  //             Duration(hours: 16),
  //             Duration(hours: 17, minutes: 30),
  //           ],
  //         ),
  //       ));
  // }
}
