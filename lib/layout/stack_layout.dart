import 'package:flutter/material.dart';

class StackLayout extends StatefulWidget {
  const StackLayout();

  @override
  State<StackLayout> createState() => _StackLayoutState();
}

class _StackLayoutState extends State<StackLayout> {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: SizedBox(
            width: 250,
            height: 250,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.white,
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Colors.white, Colors.red, Colors.blue],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
