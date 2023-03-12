import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable {
  final Coord coord;
  final List<Weather> weather;
  final String base;
  final Main main;
  final num visibility;
  final Wind wind;
  final Clouds clouds;
  final num dt;
  final Sys sys;
  final num timezone;
  final num id;
  final String name;
  final num cod;

  WeatherModel({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      coord: Coord.fromJson(json['coord']),
      weather: (json['weather'] as List)
          .map((weather) => Weather.fromJson(weather))
          .toList(),
      base: json['base'],
      main: Main.fromJson(json['main']),
      visibility: json['visibility'],
      wind: Wind.fromJson(json['wind']),
      clouds: Clouds.fromJson(json['clouds']),
      dt: json['dt'],
      sys: Sys.fromJson(json['sys']),
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['coord'] = coord.toJson();
    data['weather'] = weather.map((weather) => weather.toJson()).toList();
    data['base'] = base;
    data['main'] = main.toJson();
    data['visibility'] = visibility;
    data['wind'] = wind.toJson();
    data['clouds'] = clouds.toJson();
    data['dt'] = dt;
    data['sys'] = sys.toJson();
    data['timezone'] = timezone;
    data['id'] = id;
    data['name'] = name;
    data['cod'] = cod;
    return data;
  }

  @override
  List<Object> get props => [
        coord,
        weather,
        base,
        main,
        visibility,
        wind,
        clouds,
        dt,
        sys,
        timezone,
        id,
        name,
        cod,
      ];
}

class Coord extends Equatable {
  final num lon;
  final num lat;

  Coord({required this.lon, required this.lat});
  
  factory Coord.fromSet(double first, double last){
    return Coord(lat: first, lon: last);
  }

  factory Coord.fromArray(List<double> coordArray){
    return Coord(lat: coordArray.first, lon: coordArray.last);
  }

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(lon: json['lon'], lat: json['lat']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }

  @override
  List<Object> get props => [lon, lat];
}

class Weather extends Equatable {
  final num id;
  final String main;
  final String description;
  final String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }

  @override
  List<Object> get props => [id, main, description, icon];
}

class Wind extends Equatable {
  final num speed;
  final num deg;
  final num gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: json['speed'],
      deg: json['deg'],
      gust: json['gust'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    return data;
  }

  @override
  List<Object> get props => [speed, deg, gust];
}

class Clouds extends Equatable {
  final num all;

  Clouds({
    required this.all,
  });

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(all: json['all']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['all'] = all;
    return data;
  }

  @override
  List<Object> get props => [all];
}

class Sys extends Equatable {
  final num type;
  final num id;
  final String country;
  final num sunrise;
  final num sunset;

  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      type: json['type'],
      id: json['id'],
      country: json['country'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['type'] = type;
    data['id'] = id;
    data['country'] = country;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }

  @override
  List<Object> get props => [type, id, country, sunrise, sunset];
}

class Main extends Equatable {
  final num temp;
  final num feelsLike;
  final num tempMin;
  final num tempMax;
  final num pressure;
  final num humidity;
  final num seaLevel;
  final num grndLevel;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: json['temp'],
      feelsLike: json['feels_like'],
      tempMin: json['temp_min'],
      tempMax: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      seaLevel: json['sea_level'],
      grndLevel: json['grnd_level'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['sea_level'] = seaLevel;
    data['grnd_level'] = grndLevel;
    return data;
  }

  @override
  List<Object> get props => [
        temp,
        feelsLike,
        tempMin,
        tempMax,
        pressure,
        humidity,
        seaLevel,
        grndLevel
      ];
}
