import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/enums.dart';

class CoffeeSizeWidget extends StatelessWidget {
  const CoffeeSizeWidget({
    Key? key,
    required this.isIcedCoffee,
    required this.onIcedCoffeeChanged,
    required this.coffeeSize,
    required this.onCoffeeSizeChanged,
  }) : super(key: key);
  final bool isIcedCoffee;
  final Function(bool) onIcedCoffeeChanged;
  final CoffeeSize coffeeSize;
  final Function(CoffeeSize) onCoffeeSizeChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    heroTag: 'Small',
                    elevation: 0,
                    backgroundColor: coffeeSize == CoffeeSize.small
                        ? Colors.white
                        : Colors.black.withOpacity(0.1),
                    onPressed: () {
                      onCoffeeSizeChanged(CoffeeSize.small);
                    },
                    child: const Text("S"),
                  ),
                  const SizedBox(height: 20),
                  FloatingActionButton(
                    heroTag: 'Medium',
                    elevation: 0,
                    backgroundColor: coffeeSize == CoffeeSize.medium
                        ? Colors.white
                        : Colors.black.withOpacity(0.1),
                    onPressed: () {
                      onCoffeeSizeChanged(CoffeeSize.medium);
                    },
                    child: const Text("M"),
                  ),
                  const SizedBox(height: 20),
                  FloatingActionButton(
                    heroTag: 'Large',
                    elevation: 0,
                    backgroundColor: coffeeSize == CoffeeSize.large
                        ? Colors.white
                        : Colors.black.withOpacity(0.1),
                    onPressed: () {
                      onCoffeeSizeChanged(CoffeeSize.large);
                    },
                    child: const Text("L"),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                //Todo: 3. Cupertino Context Menu
                //Todo: 4. Animated Opacity
                //Todo: 5. Snack Bar
                child: Center(
                  child: const Placeholder(
                    strokeWidth: 5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
