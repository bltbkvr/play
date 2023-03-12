import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ColorCubit extends Cubit<MaterialColor> {
  ColorCubit() : super(Colors.red);

  // var monkeyCubit = BlocProvider.of<MonkeyCubit>(context);
  final List<MaterialColor> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.blue,
    Colors.green,
  ];

  void switchColor(int counter) =>
      emit(colors.elementAt(counter % colors.length));
}
