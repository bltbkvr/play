import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/monkes/monkey_bloc.dart';



class FloatingBtn extends StatelessWidget {
const FloatingBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var monkeyCubit = BlocProvider.of<MonkeyCubit>(context);
    return BlocBuilder<MonkeyCubit, int>(
        // CUBIT
        builder: (context, state) => FloatingActionButton(
          onPressed: () {
            //widget.changeColor();
            monkeyCubit.increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
  }
}
