import 'dart:math' show pi;
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class AnimationThree extends StatefulWidget {
  const AnimationThree({super.key});

  @override
  State<AnimationThree> createState() => _AnimationThreeState();
}
const widthAndHeight = 50.0;
class _AnimationThreeState extends State<AnimationThree> with TickerProviderStateMixin {

  late AnimationController _xController;
  late AnimationController _yController;
  late AnimationController _zController;
  late Tween<double> _animation;

  @override
  void initState() {
    super.initState();

    _xController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    );

    _yController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    );

    _zController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 40),
    );

    _animation = Tween<double>(
      begin: 0,
      end: pi * 2,
    );
  }

  @override
  void dispose() {
    _xController.dispose();
    _yController.dispose();
    _zController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _xController
      ..reset()
      ..repeat();

    _yController
      ..reset()
      ..repeat();

    _zController
      ..reset()
      ..repeat();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: widthAndHeight,
              width: double.infinity,
            ),
            AnimatedBuilder(
              animation: Listenable.merge([
                _xController,
                _yController,
                _zController,
              ]),
              builder: (context,child) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                  ..rotateX(_animation.evaluate(_xController))
                  ..rotateY(_animation.evaluate(_yController))
                  ..rotateZ(_animation.evaluate(_zController)),
                  child: Stack(
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..translate(Vector3(0, 0, -widthAndHeight)),
                        child: Container(
                          color: Colors.purple,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: Center(child: Text("JKS",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      // left side
                      Transform(
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.identity()..rotateY(pi / 2.0),
                        child: Container(
                          color: Colors.red,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: Center(child: Text("JKS",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      // left side
                      Transform(
                        alignment: Alignment.centerRight,
                        transform: Matrix4.identity()..rotateY(-pi / 2.0),
                        child: Container(
                          color: Colors.blue,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: Center(child: Text("JKS",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      // front
                      Container(
                        color: Colors.green,
                        width: widthAndHeight,
                        height: widthAndHeight,
                        child: Center(child: Text("JKS",style: TextStyle(color: Colors.white),)),
                      ),
                      // top side
                      Transform(
                        alignment: Alignment.topCenter,
                        transform: Matrix4.identity()..rotateX(-pi / 2.0),
                        child: Container(
                          color: Colors.orange,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: Center(child: Text("JKS",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      // bottom side
                      Transform(
                        alignment: Alignment.bottomCenter,
                        transform: Matrix4.identity()..rotateX(pi / 2.0),
                        child: Container(
                          color: Colors.brown,
                          width: widthAndHeight,
                          height: widthAndHeight,
                          child: Center(child: Text("JKS",style: TextStyle(color: Colors.white),)),
                        ),
                      ),

                    ],
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
