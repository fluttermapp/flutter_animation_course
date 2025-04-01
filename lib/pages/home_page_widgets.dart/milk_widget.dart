import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/wave_widget.dart';

class MilkWidget extends StatelessWidget {
  const MilkWidget({
    Key? key,
    required this.currentMilk,
    required this.onRemoveCurrentMilk,
    required this.onResetCurrentMilk,
    required this.controller,
  }) : super(key: key);
  final int currentMilk;
  final VoidCallback onRemoveCurrentMilk;
  final VoidCallback onResetCurrentMilk;
  final AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedOpacity(
              opacity: currentMilk > 0 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: AbsorbPointer(
                absorbing: currentMilk > 0 ? false : true,
                child: IconButton(
                  icon: const Icon(Icons.remove_circle),
                  color: Colors.black87,
                  onPressed: () {
                    if (currentMilk > 0) {
                      onRemoveCurrentMilk();
                    }
                  },
                ),
              ),
            ),
            const Text(
              'Milk',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  fontWeight: FontWeight.w700),
            ),
            AnimatedOpacity(
              opacity: currentMilk > 0 ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: AbsorbPointer(
                absorbing: currentMilk > 0 ? false : true,
                child: IconButton(
                  icon: const Icon(Icons.cancel),
                  color: Colors.black87,
                  onPressed: () {
                    //Todo: 2. Cupertino Action Sheet
                  },
                ),
              ),
            ),
          ],
        ),
        //Todo: 1. Circular Animation
        const SizedBox(height: 10),
      ],
    );
  }
}
