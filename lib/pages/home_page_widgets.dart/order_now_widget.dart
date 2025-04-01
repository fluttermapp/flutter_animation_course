import 'package:flutter/material.dart';

import '../../core/constants.dart';

class OrderNowWidget extends StatelessWidget {
  const OrderNowWidget({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding10),
          child: ElevatedButton(
            onPressed: () {
              callback();
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              backgroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 40),
            ),
            child: Text(
              'Order now',
              style: textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
