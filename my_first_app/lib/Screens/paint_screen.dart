import 'package:flutter/material.dart';

class PaintScreen extends StatelessWidget {
  const PaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Paint Screen'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.amber,
          child: CustomPaint(
            painter: MyPainter(),
            // child: Text(
            //   'Hello',
            //   style: TextStyle(fontSize: 40),
            // ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    // final paint1 = Paint()
    //   ..color = Colors.green
    //   ..strokeWidth = 3;

    // draw a Line***
    // canvas.drawLine(Offset(size.width * 0.1, size.height / 2),
    //     Offset(size.width * 0.9, size.height * .6), paint);

//   draw a Rectangle****
    // final rect = Rect.fromPoints(Offset(size.width * 0.1, size.height * .1),
    //     Offset(size.width * 0.9, size.height * .9));
    // canvas.drawRect(rect, paint);

    // draw a Circle*****
    // final circle1 = Offset(size.width / 2, size.height / 2);
    // final circle2 = Offset(size.width / 2, size.height / 3);
    // canvas.drawCircle(circle1, size.width * .2, paint);
    // canvas.drawCircle(circle2, size.width * .1, paint);

// draw a Arc
    // final rect = Rect.fromPoints(Offset(size.width * .2, size.height * .2),
    //     Offset(size.width * .9, size.height * .8));
    // canvas.drawArc(rect, pi / 4, pi / 4, true, paint);

    // Path draw
    final path = Path();
    path.moveTo(size.width * .2, size.height * 1);
    path.arcToPoint(Offset(size.width * .9, size.height * .7),
        radius: const Radius.circular(20));

    // path.lineTo(size.width * .9, size.height * .2);
    // path.lineTo(size.width * .4, size.height * .2);
    // path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}
