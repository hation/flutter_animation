import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animation/stagger_animation.dart';


class StaggerAnimationPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tween Animation',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(
          color: Colors.white,
          child: StaggerDemo(),
        ));
  }
}
