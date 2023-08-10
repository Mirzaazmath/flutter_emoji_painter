import 'dart:math';

import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Emoji painter"),
      ),
      body: LayoutBuilder(
        builder: (context,constraints){
          return CustomPaint(
            painter: MyEmojipainter(),
            size: Size(constraints.maxHeight,constraints.maxWidth),

          );
        },
      ),
    );
  }
}


class MyEmojipainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {


    // To Draw line
    Paint linepaint=Paint()..strokeWidth=10;

   // To Draw face
    Paint facepaint=Paint()..strokeWidth=10..color=Colors.yellow;

    canvas.drawCircle( Offset(size.width/2, (size.height/2)+20), 200, facepaint);
    // line One
    // left Eyebrow
    canvas.drawLine(const Offset(50, 100),const  Offset(150, 160), linepaint);
    // line two
    // right Eyebrow
    canvas.drawLine(Offset(size.width-50, 100), Offset(size.width-150, 160), linepaint);
    // Draw Circle
    //left eye
    canvas.drawCircle(const Offset(100, 180), 20, linepaint);
    //right eye
    canvas.drawCircle( Offset(size.width-100, 180), 20, linepaint);
// this rect helps to draw mouth
    Rect rect= const  Rect.fromLTRB(70, 370, 300, 140);
    // Draw mouth
    canvas.drawArc(rect, pi, pi, true, linepaint);
    // draw Entire face



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return true;
  }

}