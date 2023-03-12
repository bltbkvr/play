import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listOfButtons = [
      MaterialButton(
        onPressed: () {
          print("salam");
        },
        child: Text("salam"),
        color: Colors.blue,
      ),
      MaterialButton(
        onPressed: () {
          print("salam");
        },
        child: Text("salam"),
        color: Colors.blue,
      ),
      MaterialButton(
        onPressed: () {
          print("salam");
        },
        child: Text("salam"),
        color: Colors.blue,
      ),
    ];
    return Drawer(
      child: Column(children: listOfButtons),
    );
  }
}
