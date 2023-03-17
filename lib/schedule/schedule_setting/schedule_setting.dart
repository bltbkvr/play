import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play/schedule/schedule_setting/daySchedule.dart';
import 'package:play/schedule/schedule_setting/timePeriod.dart';
import 'package:play/styles/mainStyle.dart';

class ScheduleSetting extends StatefulWidget {
  const ScheduleSetting({Key? key}) : super(key: key);

  @override
  State<ScheduleSetting> createState() => ScheduleSettingState();
}

class ScheduleSettingState extends State<ScheduleSetting> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> childs = [];

    for (int i = 0; i < 6; i++) {
      childs.add(DaySchedule());
    }
    return Container(
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: GlobalStyles.disabledColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Column(
        children: childs,
      ),
    );
  }
}
