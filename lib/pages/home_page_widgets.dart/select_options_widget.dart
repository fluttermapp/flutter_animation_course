import 'package:flutter/material.dart';

import '../../core/constants.dart';

class SelectOptionsWidget extends StatelessWidget {
  const SelectOptionsWidget({
    Key? key,
    required this.isIcedCoffee,
    required this.onIcedCoffeeChanged,
    required this.isWhippedCream,
    required this.onWhippedCreamChanged,
  }) : super(key: key);

  final bool isIcedCoffee;
  final Function(bool) onIcedCoffeeChanged;
  final bool isWhippedCream;
  final Function(bool) onWhippedCreamChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        SwitchListTile(
          value: isIcedCoffee,
          activeColor: Colors.white,
          title: Text(
            'Iced Coffee',
            style: textStyle2,
          ),
          onChanged: (bool newBool) {
            onIcedCoffeeChanged(newBool);
          },
        ),
        SwitchListTile(
          value: isWhippedCream,
          activeColor: Colors.white,
          title: Text(
            'Whipped Cream',
            style: textStyle2,
          ),
          onChanged: (bool newBool) {
            onWhippedCreamChanged(newBool);
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
