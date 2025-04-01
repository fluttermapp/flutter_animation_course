import 'package:flutter/material.dart';
import '/core/constants.dart';
import '/class/coffee_class.dart';
import '/core/enums.dart';
import '/pages/welcome_page.dart';

class SwipeUpWidget extends StatefulWidget {
  const SwipeUpWidget({
    Key? key,
    required this.resetAll,
    required this.coffee,
  }) : super(key: key);

  final VoidCallback resetAll;
  final Coffee coffee;

  @override
  State<SwipeUpWidget> createState() => _SwipeUpWidgetState();
}

class _SwipeUpWidgetState extends State<SwipeUpWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.black12,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onVerticalDragUpdate: (dragUpdateDetails) {
          //Todo: 7. BottomSheet Animation
        },
        child: const SizedBox(
          height: 50,
          child: Center(
            child: Icon(
              Icons.swipe_up_outlined,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  String getSize({required CoffeeSize coffeeSize}) {
    String value;
    switch (coffeeSize) {
      case CoffeeSize.small:
        value = 'Small';
        break;
      case CoffeeSize.medium:
        value = 'Medium';
        break;
      case CoffeeSize.large:
        value = 'Large';
        break;
      default:
        value = 'Small';
    }
    return value;
  }
}
