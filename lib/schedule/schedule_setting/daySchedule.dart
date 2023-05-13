import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play/schedule/schedule_setting/timePeriod.dart';
import 'package:play/styles/mainStyle.dart';

class DaySchedule extends StatefulWidget {
  const DaySchedule({Key? key}) : super(key: key);

  @override
  State<DaySchedule> createState() => DayScheduleState();
}

class DayScheduleState extends State<DaySchedule> {
  bool switchPosition = false;
  Duration startTime = new Duration();
  Duration endTime = new Duration();

  void setStart(Duration newStart) {
    setState(() {
      startTime = newStart;
    });
  }

  void setEnd(Duration newEnd) {
    setState(() {
      endTime = newEnd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoSwitch(
              value: switchPosition,
              activeColor: GlobalStyles.activeColor,
              onChanged: (value) {
                setState(() {
                  this.switchPosition = value;
                });
              }),
          Text("ПН"),
          buildTimeField(switchPosition)
        ],
      ),
    );
  }

  Widget buildTimeField(bool switchValue) {
    if (!switchValue) {
      return SizedBox(
        height: 45,
        width: 180,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "нерабочий день",
            style:
                TextStyle(fontSize: 15, color: GlobalStyles.disabledTextColor),
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      return TimePeriod(
        setEnd: setEnd,
        setStart: setStart,
      );
    }
  }
}
