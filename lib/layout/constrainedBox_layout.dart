import 'package:flutter/material.dart';
class ConstrainedBoxLayout extends StatefulWidget {
  const ConstrainedBoxLayout();

  @override
  State<ConstrainedBoxLayout> createState() => _ConstrainedBoxLayoutState();
}

class _ConstrainedBoxLayoutState extends State<ConstrainedBoxLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layout Demo"),
        ),
        body:
           //ConstrainedBox
                Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 100),
                child: Text('Delicious Candy',
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
              ),
            )
           );
  }
}