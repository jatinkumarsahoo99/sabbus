import 'package:flutter/material.dart';

class AlphabetPainter extends CustomPainter {
  final String alphabet;

  AlphabetPainter(this.alphabet);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();

    switch (alphabet) {
      case 'A':
        path.moveTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.5, size.height * 0.1);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'B':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.arcToPoint(
          Offset(size.width * 0.35, size.height * 0.9),
          radius: Radius.circular(size.width * 0.25),
          clockwise: false,
        );
        path.arcToPoint(
          Offset(size.width * 0.9, size.height * 0.6),
          radius: Radius.circular(size.width * 0.3),
          clockwise: false,
          largeArc: false,
        );
        path.arcToPoint(
          Offset(size.width * 0.35, size.height * 0.3),
          radius: Radius.circular(size.width * 0.25),
          clockwise: false,
        );
        path.lineTo(size.width * 0.1, size.height * 0.1);
        break;
      case 'C':
        path.moveTo(size.width * 0.9, size.height * 0.1);
        path.arcToPoint(
          Offset(size.width * 0.1, size.height * 0.9),
          radius: Radius.circular(size.width * 0.4),
          clockwise: true,
        );
        break;
      case 'D':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.arcToPoint(
          Offset(size.width * 0.9, size.height * 0.9),
          radius: Radius.circular(size.width * 0.4),
          clockwise: false,
        );
        path.lineTo(size.width * 0.9, size.height * 0.1);
        break;
      case 'E':
        path.moveTo(size.width * 0.9, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.35);
        path.lineTo(size.width * 0.6, size.height * 0.35);
        path.lineTo(size.width * 0.1, size.height * 0.35);
        path.lineTo(size.width * 0.1, size.height * 0.6);
        path.lineTo(size.width * 0.6, size.height * 0.6);
        path.lineTo(size.width * 0.1, size.height * 0.6);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'F':
        path.moveTo(size.width * 0.9, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.35);
        path.lineTo(size.width * 0.6, size.height * 0.35);
        break;
      case 'G':
        path.moveTo(size.width * 0.9, size.height * 0.45);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        path.arcToPoint(
          Offset(size.width * 0.1, size.height * 0.45),
          radius: Radius.circular(size.width * 0.8),
          clockwise: false,
        );
        path.lineTo(size.width * 0.6, size.height * 0.45);
        path.lineTo(size.width * 0.6, size.height * 0.6);
        break;
      case 'H':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.moveTo(size.width * 0.9, size.height * 0.1);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        path.moveTo(size.width * 0.1, size.height * 0.45);
        path.lineTo(size.width * 0.9, size.height * 0.45);
        break;
      case 'I':
        path.moveTo(size.width * 0.5, size.height * 0.1);
        path.lineTo(size.width * 0.5, size.height * 0.9);
        break;
      case 'J':
        path.moveTo(size.width * 0.5, size.height * 0.1);
        path.lineTo(size.width * 0.5, size.height * 0.8);
        path.arcToPoint(
          Offset(size.width * 0.3, size.height * 0.9),
          radius: Radius.circular(size.width * 0.2),
          clockwise: false,
        );
        break;
      case 'K':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.moveTo(size.width * 0.1, size.height * 0.45);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        path.moveTo(size.width * 0.1, size.height * 0.45);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'L':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'M':
        path.moveTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.5, size.height * 0.1);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'N':
        path.moveTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'O':
        path.moveTo(size.width * 0.1, size.height * 0.9);
        path.arcToPoint(
          Offset(size.width * 0.9, size.height * 0.9),
          radius: Radius.circular(size.width * 0.4),
          clockwise: false,
        );
        path.lineTo(size.width * 0.9, size.height * 0.1);
        path.arcToPoint(
          Offset(size.width * 0.1, size.height * 0.1),
          radius: Radius.circular(size.width * 0.4),
          clockwise: false,
        );
        path.lineTo(size.width * 0.1, size.height * 0.9);
        break;
      case 'P':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.arcToPoint(
          Offset(size.width * 0.9, size.height * 0.6),
          radius: Radius.circular(size.width * 0.3),
          clockwise: false,
          largeArc: false,
        );
        path.arcToPoint(
          Offset(size.width * 0.1, size.height * 0.4),
          radius: Radius.circular(size.width * 0.25),
          clockwise: false,
          largeArc: false,
        );
        path.lineTo(size.width * 0.6, size.height * 0.4);
        break;
      case 'Q':
        path.moveTo(size.width * 0.1, size.height * 0.9);
        path.arcToPoint(
          Offset(size.width * 0.9, size.height * 0.9),
          radius: Radius.circular(size.width * 0.4),
          clockwise: false,
        );
        path.lineTo(size.width * 0.9, size.height * 0.1);
        path.arcToPoint(
          Offset(size.width * 0.1, size.height * 0.1),
          radius: Radius.circular(size.width * 0.4),
          clockwise: false,
        );
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.moveTo(size.width * 0.5, size.height * 0.5);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'R':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.arcToPoint(
          Offset(size.width * 0.9, size.height * 0.6),
          radius: Radius.circular(size.width * 0.3),
          clockwise: false,
          largeArc: false,
        );
        path.arcToPoint(
          Offset(size.width * 0.1, size.height * 0.5),
          radius: Radius.circular(size.width * 0.25),
          clockwise: false,
          largeArc: false,
        );
        path.lineTo(size.width * 0.9, size.height * 0.1);
        break;
      case 'S':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.6, size.height * 0.1);
        path.arcToPoint(
          Offset(size.width * 0.9, size.height * 0.25),
          radius: Radius.circular(size.width * 0.25),
          clockwise: false,
          largeArc: false,
        );
        path.arcToPoint(
          Offset(size.width * 0.6, size.height * 0.45),
          radius: Radius.circular(size.width * 0.3),
          clockwise: true,
          largeArc: false,
        );
        path.lineTo(size.width * 0.1, size.height * 0.45);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      case 'T':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        path.moveTo(size.width * 0.5, size.height * 0.1);
        path.lineTo(size.width * 0.5, size.height * 0.9);
        break;
      case 'U':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        break;
      case 'V':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.5, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        break;
      case 'W':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.3, size.height * 0.9);
        path.lineTo(size.width * 0.5, size.height * 0.1);
        path.lineTo(size.width * 0.7, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        break;
      case 'X':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        path.moveTo(size.width * 0.9, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        break;
      case 'Y':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.5, size.height * 0.45);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        path.moveTo(size.width * 0.5, size.height * 0.45);
        path.lineTo(size.width * 0.5, size.height * 0.9);
        break;
      case 'Z':
        path.moveTo(size.width * 0.1, size.height * 0.1);
        path.lineTo(size.width * 0.9, size.height * 0.1);
        path.lineTo(size.width * 0.1, size.height * 0.9);
        path.lineTo(size.width * 0.9, size.height * 0.9);
        break;
      default:
      // If the character is not recognized, draw nothing
        break;
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyCustomPainterPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabet Painter'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size(200, 200),
          painter: AlphabetPainter('U'), // You can change the alphabet here
        ),
      ),
    );
  }
}


