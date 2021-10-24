import 'package:flutter/material.dart';

class ExpandedLayout extends StatefulWidget {
  const ExpandedLayout();

  @override
  State<ExpandedLayout> createState() => _ExpandedLayoutState();
}

class _ExpandedLayoutState extends State<ExpandedLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Demo"),
      ),
      body:
          //Expanded
          Center(
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100,
                height: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
