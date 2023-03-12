import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:play/app/rakhat_app.dart';
import 'package:play/monkes/monkey_bloc.dart';
import 'package:play/weather/bloc/weather_bloc.dart';

import 'app/color_bloc.dart';
import 'home_page/home_page_bloc.dart';

void main() async {
  print("Print from main.dart");
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: ((context) => MonkeyCubit()),
      ),
      BlocProvider(
        create: ((context) => ColorCubit()),
      ),
      BlocProvider(
        create: ((context) => HomePageCubit()),
      ),
      BlocProvider(
        create: ((context) => WeatherCubit()),
      ),
    ],
    child: const RakhatApp(),
  ));
}
