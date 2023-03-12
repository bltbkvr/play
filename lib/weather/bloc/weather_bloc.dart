import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'dart:io';
import '../weather.dart';
import '../weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherCubit extends Cubit<Coord> {
  WeatherCubit() : super(Coord.fromSet(76.8512, 43.2220));

  void setCoord(Coord coord) => emit(coord);

  Future<WeatherModel> fetchWeather() async {
    try {
      var stringAQ =
          "api.openweathermap.org/data/2.5/weather?lat=43.2220&lon=76.8512&appid=9a5341c373410d16a8381248f6682323";

      var url = Uri.https("api.openweathermap.org", "/data/2.5/weather", {
        "lat": state.lat.toString(),
        "lon": state.lon.toString(),
        "appid": "9a5341c373410d16a8381248f6682323",
        "units": "metric",
      });
      var response = await http.post(url);
      // print('Response status: ${response.statusCode}');
      // print('Response body: ${response.body}');

      print(response.body);
      var weather = WeatherModel.fromJson(jsonDecode(response.body));
      return weather;
      // print(await http.read(Uri.https('example.com', 'foobar.txt')));
    } catch (e) {
      print('xxxxx');
      print(e);
      print('xxxxx');
      rethrow;
    }
  }
}
