import 'package:flutter/material.dart';

class ListViewLayout extends StatefulWidget {
  const ListViewLayout();

  @override
  State<ListViewLayout> createState() => _ListViewLayoutState();
}

class _ListViewLayoutState extends State<ListViewLayout> {
  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'G'];
  final List<Color> colorCodes = <Color>[
    Colors.amber,
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.blue,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry D')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry E')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry G')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry H')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry D')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry E')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry G')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry 1')),
        ),
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry 2')),
        ),
      ],
    )
        // ListView.builder(
        //     padding: const EdgeInsets.all(8),
        //     itemCount: entries.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Container(
        //         height: 50,
        //         color: colorCodes[index],
        //         child: Center(child: Text('Entry ${entries[index]}')),
        //       );
        //     })

        );
  }
}
