import 'dart:math';
// make sure you add this line

import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emoji Painter"),
      ),
      body: LayoutBuilder(
          builder: (context,constraints){
            return CustomPaint(
              painter: MyEmojiPainter(),
              size: Size(constraints.maxHeight,constraints.maxWidth),
            );
          }
      ),
    );
  }
}

class MyEmojiPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    // Creating the line paint
    Paint linepaint=Paint()..strokeWidth=10;

    // Creating the facepaint

    Paint facepaint=Paint()..color=Colors.yellow;

// make sure you create the face before creating anything on canvas
    // its not in right position
    // lets solve it
    canvas.drawCircle(Offset(size.width/2, size.height/2+30), 200, facepaint);

    // Creating the Eyebrows

    canvas.drawLine(Offset(50, 100), Offset(150, 160), linepaint);
    canvas.drawLine(Offset(size.width-50, 100), Offset(size.width-150, 160), linepaint);

    // Creating the eyes

    canvas.drawCircle(Offset(100, 200), 20, linepaint);
    canvas.drawCircle(Offset(size.width-100, 200), 20, linepaint);

    // Creating the Mouth

    // but first we need a Rectangle

    Rect rect= Rect.fromLTRB(70, 370, 300, 140);

    canvas.drawArc(rect, pi, pi, true, linepaint);

    // Creating the face



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// All Done
// Thanks for Watching
