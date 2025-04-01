import 'package:flutter/material.dart';

import '../core/enums.dart';

class Coffee {
  Coffee({
    required this.currentMilk,
    required this.currentSugar,
    required this.coffeeSize,
    required this.textEditingController,
    required this.isIcedCoffee,
    required this.isWhippedCream,
  });
  int currentMilk;
  int currentSugar;
  CoffeeSize coffeeSize;
  TextEditingController textEditingController;
  bool isIcedCoffee;
  bool isWhippedCream;
}
