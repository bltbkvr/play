import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles/mainStyle.dart';

class TimePeriod extends StatefulWidget {
  final Function(Duration) setStart;
  final Function(Duration) setEnd;
  const TimePeriod({Key? key, required this.setStart, required this.setEnd})
      : super(key: key);

  @override
  State<TimePeriod> createState() => TimePeriodState();
}

class TimePeriodState extends State<TimePeriod> {
  late final fromController;
  late final toController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fromController = TextEditingController();
    toController = TextEditingController();

    fromController.addListener(() {
      print(fromController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 45,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 45, //TODO: 12312312
            width: 80,
            child: CupertinoTextField(
              onTap: () => {},
              controller: fromController, //????? v chem raznica
              // onChanged: (value) {widget.setStart(value)},
              placeholderStyle: TextStyle(
                  fontSize: 15, color: GlobalStyles.disabledTextColor),
              keyboardType: TextInputType.datetime,
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
              placeholder: "10:00",
              decoration: BoxDecoration(
                  border: Border.all(color: GlobalStyles.disabledColor),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '-',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 45,
            width: 80,
            child: CupertinoTextField(
              controller: toController,
              placeholderStyle: TextStyle(
                  fontSize: 15, color: GlobalStyles.disabledTextColor),
              padding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
              placeholder: "22:00",
              decoration: BoxDecoration(
                  border: Border.all(color: GlobalStyles.disabledColor),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
        ],
      ),
    );
  }
}
