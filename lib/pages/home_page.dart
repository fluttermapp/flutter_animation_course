import 'package:flutter/material.dart';
import '../class/coffee_class.dart';
import '../core/constants.dart';
import '../pages/home_page_widgets.dart/clear_order_widget.dart';
import '../pages/home_page_widgets.dart/milk_widget.dart';
import '../pages/home_page_widgets.dart/sugar_widget.dart';
import '../pages/home_page_widgets.dart/swipe_up_widget.dart';
import '../pages/order_page.dart';

import '../core/enums.dart';
import 'home_page_widgets.dart/add_note_widget.dart';
import 'home_page_widgets.dart/coffee_size_widget.dart';
import 'home_page_widgets.dart/order_now_widget.dart';
import 'home_page_widgets.dart/select_options_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  bool isCompleted = false;

  Coffee coffee = Coffee(
    currentMilk: 0,
    currentSugar: 0,
    coffeeSize: CoffeeSize.small,
    textEditingController: TextEditingController(),
    isIcedCoffee: false,
    isWhippedCream: false,
  );

  @override
  void initState() {
    super.initState();
    //Todo: Init
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: greenColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CoffeeSizeWidget(
                    isIcedCoffee: coffee.isIcedCoffee,
                    onIcedCoffeeChanged: (bool newBool) {
                      setState(() {
                        coffee.isIcedCoffee = newBool;
                      });
                    },
                    coffeeSize: coffee.coffeeSize,
                    onCoffeeSizeChanged: (CoffeeSize newCoffeSize) {
                      setState(() {
                        coffee.coffeeSize = newCoffeSize;
                      });
                    },
                  ),
                  const Divider(),
                  AddNoteWidget(
                    controller: coffee.textEditingController,
                    onControllerChanged: (String newString) {
                      setState(() {
                        coffee.textEditingController.text = newString;
                      });
                    },
                  ),
                  const Divider(),
                  //Todo: Add MilkWidget
                  const Placeholder(
                    strokeWidth: 5,
                    color: Colors.white,
                  ),
                  const Divider(),
                  SugarWidget(
                      currentSugar: coffee.currentSugar,
                      onRemoveCurrentSugar: () {
                        setState(() {
                          coffee.currentSugar--;
                        });
                      },
                      onAddCurrentSugar: () {
                        setState(() {
                          coffee.currentSugar++;
                        });
                      }),
                  const Divider(),
                  SelectOptionsWidget(
                    isIcedCoffee: coffee.isIcedCoffee,
                    isWhippedCream: coffee.isWhippedCream,
                    onIcedCoffeeChanged: (bool newBool) {
                      setState(() {
                        coffee.isIcedCoffee = newBool;
                      });
                    },
                    onWhippedCreamChanged: (bool newBool) {
                      setState(() {
                        coffee.isWhippedCream = newBool;
                      });
                    },
                  ),
                  const Divider(),
                  OrderNowWidget(callback: completed),
                  ClearOrderWidget(resetAll: resetAll)
                ],
              ),
            ),
          ),
          bottomNavigationBar: SwipeUpWidget(
            resetAll: resetAll,
            coffee: coffee,
          ),
        ),
        Visibility(
          visible: isCompleted,
          child: Container(
            color: Colors.black.withOpacity(0.7),
            height: double.infinity,
            width: double.infinity,
            child: const CircularProgressIndicator.adaptive(
              backgroundColor: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  void completed() async {
    setState(() {
      isCompleted = true;
    });
    await Future.delayed(
      const Duration(seconds: 1),
      () {
        resetAll();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const OrderPage(),
          ),
        );
      },
    );
  }

  void resetAll() {
    setState(() {
      coffee.isIcedCoffee = false;
      coffee.isWhippedCream = false;
      coffee.currentMilk = 0;
      coffee.currentSugar = 0;
      coffee.textEditingController.text = '';
      coffee.coffeeSize = CoffeeSize.small;
      isCompleted = false;
    });
  }
}
