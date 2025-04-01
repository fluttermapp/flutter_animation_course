/* showModalBottomSheet(
            context: context,
            builder: (context) => BottomSheet(
              enableDrag: true,
              animationController: BottomSheet.createAnimationController(this),
              onClosing: () {},
              builder: (context) => SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: kPadding5),
                    ListTile(
                      title: Text(
                        'My Coffee Cup order',
                        style: textStyle,
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: const Text(
                        'Size',
                      ),
                      trailing: Text(
                        getSize(coffeeSize: widget.coffee.coffeeSize),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Milk',
                      ),
                      trailing: Text(
                        widget.coffee.currentMilk.toString(),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Sugar',
                      ),
                      trailing: Text(
                        widget.coffee.currentSugar.toString(),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Iced',
                      ),
                      trailing: Text(
                        widget.coffee.isIcedCoffee ? 'Yes' : 'No',
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Whipped Cream',
                      ),
                      trailing: Text(
                        widget.coffee.isWhippedCream ? 'Yes' : 'No',
                      ),
                    ),
                    Visibility(
                      visible:
                          widget.coffee.textEditingController.text.isNotEmpty,
                      child: ListTile(
                        title: const Text(
                          'Note',
                        ),
                        trailing: Text(
                          widget.coffee.textEditingController.text,
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      title: const Text('Logout'),
                      onTap: () {
                        widget.resetAll();
                        Navigator.of(context).pop();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ); */