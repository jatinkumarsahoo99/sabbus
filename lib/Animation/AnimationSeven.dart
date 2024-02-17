import 'package:flutter/material.dart';
import 'dart:math' show pi, cos, sin;

class AnimationSeven extends StatefulWidget {

  String ? text;

   AnimationSeven({Key? key,this.text}) : super(key: key);

  @override
  State<AnimationSeven> createState() => _AnimationSevenState();
}

class _AnimationSevenState extends State<AnimationSeven> with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _scaleAnimation = Tween(
      begin: 0.5,
      end: 1.0,
    ).animate(_scaleController)
      ..addListener(() {
        setState(() {}); // Trigger rebuild when animation value changes
      });

    _scaleController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _scaleController,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Text(
              widget.text??"Jatin",
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,

                fontSize: 15.0, // Set your desired initial font size
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AnimationSeven(),
  ));
}
