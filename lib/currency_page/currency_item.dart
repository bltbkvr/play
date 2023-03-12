import 'package:flutter/material.dart';

class CurrencyItem extends StatelessWidget {
  final currencyCode;
  final currencyRate;
  const CurrencyItem({
    Key? key,
    this.currencyCode,
    this.currencyRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(223, 69, 106, 218),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 30),
                child: Text(
                  currencyCode,
                  style: TextStyle(
                    color: Colors.black,fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  currencyRate.toStringAsFixed(1),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
