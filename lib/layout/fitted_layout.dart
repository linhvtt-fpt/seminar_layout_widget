import 'package:flutter/material.dart';
class FittedLayout extends StatefulWidget {
  const FittedLayout();

  @override
  State<FittedLayout> createState() => _FittedLayoutState();
}

class _FittedLayoutState extends State<FittedLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layout Demo"),
        ),
        body:
          //Fitted
               Container(
              height: 500,
              width: 400,
              color: Colors.red,
              child: FittedBox(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi21wd_uNoy5Hxz5GimA8liCxRlR7TsAO26RB2nMnf-gZ0FtBN52VAAPKfb5l7g0culcU&usqp=CAU'),
               alignment: Alignment.topLeft,
                fit: BoxFit.none,
              ),
            ),
           );
  }
}