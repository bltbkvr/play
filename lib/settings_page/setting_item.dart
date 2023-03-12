import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String settingName;
  final Icon settingIcon;

  const SettingItem(
      {Key? key, required this.settingName, required this.settingIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Center(
            child:
                Row(children: [settingIcon, Text(settingName)])));
  }
}
