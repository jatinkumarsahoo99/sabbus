import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' show pi;

import 'animation3.dart';

class AnimationOne extends StatefulWidget {
  const AnimationOne({super.key});

  @override
  State<AnimationOne> createState() => _AnimationOneState();
}

class _AnimationOneState extends State<AnimationOne> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0.0, end: 2 * pi).animate(_controller);
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateZ(0.1),
                child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 5))
                        ]),
                    child: Center(child: Text("JKS"))),
              )),
              Center(
                  child: AnimatedBuilder(
                builder: (context, child) {
                  return Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(_animation.value),
                    child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 5))
                            ]),
                        child: Center(child: Text("JKS"))),
                  );
                },
                animation: _controller,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                  SizedBox(height: 150, width: 60, child: AnimationThree()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
