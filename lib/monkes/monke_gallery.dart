import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/monkes/monkey_bloc.dart';
import 'package:play/monkes/monkeys.dart';

class MonkeGallery extends StatefulWidget {
  final int counter;
  const MonkeGallery({
    super.key, required this.counter,
  });

  @override
  _MonkeGalleryState createState() => _MonkeGalleryState();
}

class _MonkeGalleryState extends State<MonkeGallery> {
  Widget createMonkes() {
    var counter =widget.counter;
    List<Image> monkes = [];
    for (int i = 0; i < 9; i++) {
      if (i == counter %9) {
        monkes.add(Image.network(
          monkeyImages.elementAt(i),
          width: 140,
          height: 140,
        ));
      } else {
        monkes.add(Image.network(
          monkeyImages.elementAt(i),
          width: 120,
          height: 120,
        ));
      }
    }
    return Wrap(
      children: monkes,
    );
  }

//fution out and inside state
  @override
  Widget build(BuildContext context) {
    return Container(
      child: createMonkes(),
    );
  }
}
