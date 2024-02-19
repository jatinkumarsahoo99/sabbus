import 'package:flutter/material.dart';

class AlphabetPainter extends CustomPainter {
  final String alphabet;

  AlphabetPainter(this.alphabet);

  @override
  void paint(Canvas canvas, Size size) {
    // Define your painting logic here
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 100.0,
      fontWeight: FontWeight.bold,
    );

    final textSpan = TextSpan(
      text: alphabet,
      style: textStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final offsetX = (size.width - textPainter.width) / 2;
    final offsetY = (size.height - textPainter.height) / 2;

    final offset = Offset(offsetX, offsetY);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyCustomPainterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabet Painter'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(200, 200),
          painter: AlphabetPainter('A'), // You can change the alphabet here
        ),
      ),
    );
  }
}

