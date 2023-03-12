import 'dart:ui';

import 'package:flutter/material.dart';

class TimeSlots extends StatefulWidget {
  final Duration startTime;
  final Duration endTime;
  final Duration interval;
  final double price;
  final List<Duration> availableSlots;

  const TimeSlots(
      {super.key,
      required this.startTime,
      required this.endTime,
      required this.interval,
      required this.price, required this.availableSlots,});

  @override
  _TimeSlotsState createState() => _TimeSlotsState();
}

class _TimeSlotsState extends State<TimeSlots> {
  List<TimeSlot> renderSlots() {
    List<TimeSlot> timeSlots = [];
    for (Duration i = widget.startTime;
        i < widget.endTime;
        i += widget.interval) {
      timeSlots.add(TimeSlot(
        price: widget.price,
        time: i,
        isAvailable: widget.availableSlots.contains(i),
      ));
    }
    return timeSlots;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: renderSlots(),
        spacing: 5,
        runSpacing: 5,
      ),
    );
  }
}

class TimeSlot extends StatefulWidget {
  final double price;
  final Duration time;
  final bool isAvailable;

  const TimeSlot({
    super.key,
    required this.price,
    required this.time,
    required this.isAvailable,
  });

  @override
  _TimeSlotState createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  @override
  Widget build(BuildContext context) {
    var hours = widget.time.inHours;
    var minutes = widget.time.inMinutes % 60;
    var label=[
        Text(
          '${hours}:${minutes == 0 ? '00' : minutes}',
          style: TextStyle(fontSize: 20),
        ),
      ];

      true?label.add(
        Text(
          '${widget.price} тг',
          style:
              TextStyle(fontSize: 12, color: Color.fromRGBO(77, 129, 247, 10)),
        ),):null;

    return ActionChip(
      label: Column(children:label ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      onPressed: widget.isAvailable?(() {
        
      }):null,
      disabledColor: Color.fromRGBO(249, 249, 249, 1),
    );
  }
}
