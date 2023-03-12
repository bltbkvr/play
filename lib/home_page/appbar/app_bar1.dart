import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/home_page/appbar/share_button.dart';

import '../../monkes/monkey_bloc.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
          // CUBIT
          title: Text("The following is the monke bloc state" +
              BlocProvider.of<MonkeyCubit>(context).state.toString()),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 50.0),
                child: GestureDetector(
                  onTap: () {},
                  child: ShareButton()
                  ),
                ),
          ]);
  }
}