import 'package:flutter/material.dart';

class SingleChildScrollViewLayout extends StatefulWidget {
  const SingleChildScrollViewLayout();

  @override
  State<SingleChildScrollViewLayout> createState() =>
      _SingleChildScrollViewLayoutState();
}

class _SingleChildScrollViewLayoutState
    extends State<SingleChildScrollViewLayout> {
  int _counter = 0;
  List<String> exercises = ["A", 'B', 'C', 'D', 'E', 'F', 'G'];
  int _selected = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("hello"),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      actions: <Widget>[
        FlatButton(
          child: const Text('CANCEL'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            //widget.onCancel();
          },
        ),
        FlatButton(
          child: const Text('OK'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            //widget.onOk();
          },
        ),
      ],
      content: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Divider(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                child: ListView.builder(
                    itemCount: exercises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return RadioListTile(
                          title: Text(exercises[index]),
                          value: index,
                          groupValue: _selected,
                          onChanged: (value) {
                            setState(() {
                              _selected = index;
                            });
                          });
                    }),
              ),
              Divider(),
              TextField(
                autofocus: false,
                maxLines: 1,
                style: TextStyle(fontSize: 18),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: "hint",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
