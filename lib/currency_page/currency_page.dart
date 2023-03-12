import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play/currency_page/currency_item.dart';
import 'package:play/currency_page/currency_nodel.dart';
import 'package:play/weather/weather_model.dart';
import 'package:http/http.dart' as http;

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  Future<CurrencyModel> fetchCurrency() async {
    var stringAQ =
        "https://api.apilayer.com/exchangerates_data/latest?symbols=USD,EUR,RUB,CNY,JPY&base=KZT";
    var apikey = "yY0PxWVBNpi3ZEKwAnhnQICeUReXTkql";
    var url = Uri.https("api.apilayer.com", "/exchangerates_data/latest", {
      "base": "KZT",
      "symbols": "USD,EUR,RUB,CNY,JPY",
    });
    var response = await http.get(url, headers: {"apikey": apikey});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    var currencyRate = CurrencyModel.fromJson(jsonDecode(response.body));
    return currencyRate;
    // print(await http.read(Uri.https('example.com', 'foobar.txt')));
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var backImageUrl =
        "https://img.freepik.com/free-vector/money-seamless-pattern-background-vector-finance-illustration_53876-140178.jpg?w=2000";
    return FutureBuilder(
        future: fetchCurrency(),
        builder: (((context, response) {
          if (response.hasData) {
            var currencyRate = response.data;
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
                  Positioned(top: 100,left:100,
                    child: CurrencyItem(
                      currencyCode: "USD",
                      currencyRate: 1 / currencyRate!.rates.usd,
                    ),
                  ),
                  Positioned(top: 300,left:100,
                    child: CurrencyItem(
                      currencyCode: "RUB",
                      currencyRate: 1 / currencyRate!.rates.rub,
                    ),
                  ),
                  Positioned(top: 500,left:100,
                    child: CurrencyItem(
                      currencyCode: "EUR",
                      currencyRate: 1 / currencyRate!.rates.eur,
                    ),
                  ),
                  Positioned(top: 700,left:100,
                    child: CurrencyItem(
                      currencyCode: "JPY",
                      currencyRate: 1 / currencyRate!.rates.jpy,
                    ),
                  ),
                  Positioned(top: 900,left:100,
                    child: CurrencyItem(
                      currencyCode: "CNY",
                      currencyRate: 1 / currencyRate!.rates.cny,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Text("chto to poshlo ne tak");
          }
        })));
  }
}
