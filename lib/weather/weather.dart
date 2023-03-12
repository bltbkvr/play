

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/weather/day_item.dart';
import 'package:play/weather/hour_item.dart';
import 'package:play/weather/weather_model.dart';
import 'package:play/weather/weather_tab.dart';

import 'bloc/weather_bloc.dart';


class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

//   To define an async function, add async before the function body:
// The await keyword works only in async functions.

  

  @override
  Widget build(BuildContext context) {
    var weatherCubit = BlocProvider.of<WeatherCubit>(context);
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var backImageUrl =
        'https://images.pexels.com/photos/53594/blue-clouds-day-fluffy-53594.jpeg?cs=srgb&dl=pexels-pixabay-53594.jpg&fm=jpg';
    return FutureBuilder(
            future: weatherCubit.fetchWeather(),
            builder: (((context, weatherResponse) {
              // print(weatherResponse.data);
              if (weatherResponse.hasData) {
                var weather = weatherResponse.data;
                return Container(
                  height: screenHeight,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(backImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Positioned(
                          top: 50,
                          left: 200,
                          height: 100,
                          width: 200,
                          child: Row(
                            children: [
                              Image(
                                image: NetworkImage(
                                    "http://openweathermap.org/img/wn/${weather!.weather.elementAt(0).icon}@2x.png"),
                                height: 55,
                                width: 55,
                              ),
                              Text(
                                weather!.main.temp.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 50, color: Colors.black),
                              ),
                            ],
                          )),
                      Positioned(
                          top: 130,
                          left: 200,
                          height: 100,
                          width: 200,
                          child: Text(
                            weather!.weather.elementAt(0).description,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                      WeatherTab(
                          top: 200,
                          left: 100,
                          title: "Temperature",
                          value: weather!.main.temp.toString(),
                          icon: Icons.thermostat),
                      WeatherTab(
                          top: 200,
                          left: 300,
                          title: "Feels like",
                          value: weather!.main.feelsLike.toString(),
                          icon: Icons.person),
                      WeatherTab(
                          top: 350,
                          left: 100,
                          title: "Max temp",
                          value: weather!.main.tempMax.toString(),
                          icon: Icons.thermostat),
                      WeatherTab(
                          top: 350,
                          left: 300,
                          title: "Min temp",
                          value: weather!.main.tempMin.toString(),
                          icon: Icons.thermostat),
                      WeatherTab(
                          top: 500,
                          left: 100,
                          title: "Pressure",
                          value: weather!.main.pressure.toString(),
                          icon: Icons.airline_seat_flat),
                      WeatherTab(
                          top: 500,
                          left: 300,
                          title: "Humidity",
                          value: weather!.main.humidity.toString(),
                          icon: Icons.water_drop),
                      WeatherTab(
                          top: 650,
                          left: 100,
                          title: "Sea level",
                          value: weather!.main.seaLevel.toString(),
                          icon: Icons.water),
                      WeatherTab(
                          top: 650,
                          left: 300,
                          title: "Ground level",
                          value: weather!.main.grndLevel.toString(),
                          icon: Icons.flood_rounded),
                      Positioned(
                          bottom: 200,
                          left: 180,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Almaty",
                              style: TextStyle(fontSize: 30),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                fixedSize: Size(250, 40),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          )),
                      Positioned(
                          bottom: 200,
                          left: 180,
                          child: ElevatedButton(
                            onPressed: () {
                              weatherCubit.emit( Coord.fromSet(
                                78.380442,
                                45.017711,
                              ));
                            },
                            child: Text(
                              "Taldykorgan",
                              style: TextStyle(fontSize: 30),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                fixedSize: Size(250, 40),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          )),
                    ],
                  ),
                );
              } else {
                return Text("chto to poshlo ne tak");
              }
            })));
  }
}
