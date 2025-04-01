import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../pages/widgets/wave_widget.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      backgroundColor: greenColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: size.height,
            child: AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutQuad,
              top: keyboardOpen ? -size.height / 3.7 : (size.height / 5),
              child: WaveWidget(
                size: size,
                yOffset: size.height / 1.5,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Thank you!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: kPadding10),
              Text(
                "We are preparing your order",
                style: textStyle2,
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            child: Align(
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Return',
                  style: textStyle2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
