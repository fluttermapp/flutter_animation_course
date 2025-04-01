import 'package:flutter/material.dart';

class SugarWidget extends StatelessWidget {
  const SugarWidget({
    Key? key,
    required this.currentSugar,
    required this.onRemoveCurrentSugar,
    required this.onAddCurrentSugar,
  }) : super(key: key);
  final int currentSugar;
  final VoidCallback onRemoveCurrentSugar;
  final VoidCallback onAddCurrentSugar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          'Sugar',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white70,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: () {
                if (currentSugar > 0) {
                  onRemoveCurrentSugar();
                }
              },
            ),
            //Todo: 6. Animated Default Text Style
            IconButton(
              icon: const Icon(Icons.add_circle),
              onPressed: () {
                onAddCurrentSugar();
              },
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
