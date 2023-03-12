import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/home_page/home_page_bloc.dart';
import 'package:play/monkes/monkey_bloc.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pageCubit = BlocProvider.of<HomePageCubit>(context);
    var items = const [
      BottomNavigationBarItem(label: "Hello", icon: Icon(Icons.home)),
      BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
      BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings)),
      BottomNavigationBarItem(label: "Weather", icon: Icon(Icons.cloud)),
      BottomNavigationBarItem(label: "Currency", icon: Icon(Icons.currency_exchange)),
    ];
    return BlocBuilder<HomePageCubit, int>(
        builder: (context, state) => BottomNavigationBar(
              // CUBIT
              currentIndex: state,
              items: items,
              type: BottomNavigationBarType.fixed,
              onTap: (value) => pageCubit.setPage(value),
            ));
  }
}
