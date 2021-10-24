import 'package:flutter/material.dart';

class WrapLayout extends StatefulWidget {
  const WrapLayout();

  @override
  State<WrapLayout> createState() => _WrapLayoutState();
}

class _WrapLayoutState extends State<WrapLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layout Demo"),
        ),
        body: Wrap(
          spacing: 10.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('AH')),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('ML')),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('M')),
              label: const Text('Mulligan'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('JL')),
              label: const Text('Laurens'),
            ),
          ],
        ));
  }
}
