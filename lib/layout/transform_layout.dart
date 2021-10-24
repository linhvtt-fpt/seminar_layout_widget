import 'dart:math';

import 'package:flutter/material.dart';
class TransformLayout extends StatefulWidget {
  const TransformLayout();

  @override
  State<TransformLayout> createState() => _TransformLayoutState();
}

class _TransformLayoutState extends State<TransformLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layout Demo"),
        ),
        body:
           // Transform
                Center(
              child: Container(
                color: Colors.black,
                child: Transform(
                  alignment: Alignment.bottomLeft,
                  transform: Matrix4.skewY(0.5)..rotateY(0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: const Color(0xFFE8581C),
                    child: const Text('Apartment for rent!'),
                  ),
                ),
              )

                // child: Transform.rotate(
                //   angle: pi / 4,
                //   child: Container(
                //     padding: const EdgeInsets.all(8.0),
                //     color: const Color(0xFFE8581C),
                //     child: const Text('Apartment for rent!'),
                //   ),
                // ),
              ),
           );
  }
}