import 'package:flutter/material.dart';

class ClearOrderWidget extends StatelessWidget {
  const ClearOrderWidget({
    Key? key,
    required this.resetAll,
  }) : super(key: key);
  final VoidCallback resetAll;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            resetAll();
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.close,
                color: Colors.white,
              ),
              Text(
                'Clear',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
