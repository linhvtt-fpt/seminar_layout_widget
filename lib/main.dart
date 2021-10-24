import 'dart:math';

import 'package:flutter/material.dart';

import 'layout/constrainedBox_layout.dart';
import 'layout/expanded_layout.dart';
import 'layout/fitted_layout.dart';
import 'layout/gridview_layout.dart';
import 'layout/listview_layout.dart';
import 'layout/singleChildScrollView_layout.dart';
import 'layout/stack_layout.dart';
import 'layout/transform_layout.dart';
import 'layout/wrap_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
     //ExpandedLayout(),
      ///FittedLayout(),
     //TransformLayout(),
     // ConstrainedBoxLayout(),
     SingleChildScrollViewLayout(),
    //  GridViewLayout(),
      //StackLayout(),
    //  ListViewLayout(),
      // WrapLayout()
    );
  }
}
