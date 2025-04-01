/* CupertinoContextMenu.builder(
                    actions: <Widget>[
                      CupertinoContextMenuAction(
                        child: Row(
                          children: [
                            const Text('Normal Coffee'),
                            const SizedBox(width: 5),
                            if (!isIcedCoffee) const Icon(Icons.check),
                          ],
                        ),
                        onPressed: () {
                          onIcedCoffeeChanged(false);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Normal Coffee'),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                      CupertinoContextMenuAction(
                        child: Row(
                          children: [
                            const Text('Iced Coffee'),
                            const SizedBox(width: 5),
                            if (isIcedCoffee) const Icon(Icons.check),
                          ],
                        ),
                        onPressed: () {
                          onIcedCoffeeChanged(true);
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Iced Coffee'),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                    ],
                    builder:
                        (BuildContext context, Animation<double> animation) =>
                            AnimatedContainer(
                      padding: const EdgeInsets.all(kPadding10),
                      margin: const EdgeInsets.all(kPadding10),
                      height: coffeeSize == CoffeeSize.small
                          ? coffeeSmall
                          : coffeeSize == CoffeeSize.medium
                              ? coffeeMedium
                              : coffeeLarge,
                      duration: const Duration(milliseconds: 300),
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/cup.png',
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: AnimatedOpacity(
                              opacity: isIcedCoffee ? 1 : 0,
                              duration: const Duration(milliseconds: 300),
                              child: Visibility(
                                visible: isIcedCoffee,
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  width: coffeeSize == CoffeeSize.small
                                      ? coffeeSmallIce
                                      : coffeeSize == CoffeeSize.medium
                                          ? coffeeMediumIce
                                          : coffeeLargeIce,
                                  child: Image.asset(
                                    'images/ice.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ) */
