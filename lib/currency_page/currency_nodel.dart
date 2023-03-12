import 'package:equatable/equatable.dart';

class CurrencyModel extends Equatable {
  final bool success;
  final int timestamp;
  final String base;
  final String date;
  final Rates rates;

  CurrencyModel({
    required this.success,
    required this.timestamp,
    required this.base,
    required this.date,
    required this.rates,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      success: json['success'],
      timestamp: json['timestamp'],
      base: json['base'],
      date: json['date'],
      rates: Rates.fromJson(json['rates']),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['success'] = success;
    data['timestamp'] = timestamp;
    data['base'] = base;
    data['date'] = date;
    data['rates'] = rates.toJson();
    return data;
  }

  @override
  List<Object> get props => [success, timestamp, base, date, rates];
}

class Rates extends Equatable {
  final double usd;
  final double eur;
  final double rub;
  final double cny;
  final double jpy;

  Rates({
    required this.usd,
    required this.eur,
    required this.rub,
    required this.cny,
    required this.jpy,
  });

  factory Rates.fromJson(Map<String, dynamic> json) {
    return Rates(
      usd: json['USD'],
      eur: json['EUR'],
      rub: json['RUB'],
      cny: json['CNY'],
      jpy: json['JPY'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['USD'] = usd;
    data['EUR'] = eur;
    data['RUB'] = rub;
    data['CNY'] = cny;
    data['JPY'] = jpy;
    return data;
  }

  @override
  List<Object> get props => [usd, eur, rub, cny, jpy];
}
