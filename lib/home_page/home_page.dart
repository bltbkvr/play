import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/currency_page/currency_page.dart';
import 'package:play/home_page/appbar/share_button.dart';
import 'package:play/home_page/body/body.dart';
import 'package:play/home_page/bottom_navbar/bottom_navbar.dart';
import 'package:play/home_page/drawer/drawer.dart';
import 'package:play/home_page/floating_btn/floating_btn.dart';
import 'package:play/home_page/home_page_bloc.dart';
import 'package:play/monkes/monkey_bloc.dart';
import 'package:play/profile_page/profile_page.dart';
import 'package:play/settings_page/settings.dart';
import 'package:play/stepper_page/stepper_page.dart';
import 'package:play/weather/weather.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var appBars = [];
    var screens = [
      StepperPage(),
      Body(),
      ProfilePage(),
      // SettingsPage(),
      // Weather(),
      // CurrencyPage()
    ];
    return Scaffold(
      // appBar: AppBar(
      //   // CUBIT
      //   title: Text("RakhatApp"),
      //   // actions: <Widget>[
      //   //   BlocBuilder<HomePageCubit, int>(
      //   //     builder: (context, state) => state == 0
      //   //         ? Padding(
      //   //             padding: EdgeInsets.only(right: 50.0),
      //   //             child: GestureDetector(
      //   //               onTap: () {},
      //   //               child: ShareButton(),
      //   //             ),
      //   //           )
      //   //         : SizedBox(),
      //   //   ),
      //   // ],
      // ),
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      drawer: MainDrawer(),
      body: BlocBuilder<HomePageCubit, int>(
          builder: (context, state) => screens.elementAt(state)),
      bottomNavigationBar: BottomNavbar(),
      floatingActionButton: FloatingBtn(),
    );
  }
}
