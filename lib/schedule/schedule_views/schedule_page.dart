import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/schedule/schedule_views/time_slots.dart';

class SchedulePage extends StatefulWidget {
  final Duration startTime;
  final Duration endTime;
  final Duration interval;
  final double price;
  final String title;
  final List<Duration> availableSlots;
  //wraping all prosps as a single props var in next iteration
  const SchedulePage({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.interval,
    required this.price,
    required this.title, required this.availableSlots,
  });

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    print('v schedule');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           BlocBuilder(builder:(context, state) =>  TimeSlots(
              startTime: widget.startTime,
              endTime: widget.endTime,
              price: widget.price,
              interval: widget.interval,
              availableSlots: widget.availableSlots,
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
