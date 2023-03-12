import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/color_bloc.dart';
import '../../monkes/monke_gallery.dart';
import '../../monkes/monkey_bloc.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorCubit = BlocProvider.of<ColorCubit>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have  pushed the button this many times:',
          ),
          BlocBuilder<MonkeyCubit, int>(builder: ((context, counter) {
            return Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            );
          })),
          BlocBuilder<MonkeyCubit, int>(
              builder: (context, state) => MonkeGallery(
                    counter: state,
                  )),
          BlocListener<MonkeyCubit, int>(
              listener: (context, state) {
                colorCubit.switchColor(state);
              },
              child: const SizedBox())
        ],
      ),
    );
  }
}
