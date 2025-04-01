import 'package:flutter/material.dart';
import 'dart:math' as math;

class WaveWidget extends StatefulWidget {
  final Size size;
  final double yOffset;
  final Color color;

  const WaveWidget({
    Key? key,
    required this.size,
    required this.yOffset,
    required this.color,
  }) : super(key: key);

  @override
  WaveWidgetState createState() => WaveWidgetState();
}

class WaveWidgetState extends State<WaveWidget> with TickerProviderStateMixin {
  late AnimationController animationController;
  List<Offset> wavePoints = [];

  @override
  void initState() {
    super.initState();
    //Todo: Add logic
  }

  @override
  void dispose() {
    //Todo: Add dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Todo: Add Animated Builder
    return const Placeholder(
      strokeWidth: 5,
      color: Colors.white,
    );
  }
}

class ClipperWidget extends CustomClipper<Path> {
  final List<Offset> waveList;
  ClipperWidget({required this.waveList});

  @override
  getClip(Size size) {
    final Path path = Path();
    //Todo: Add paths
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
