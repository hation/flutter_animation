import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animation/logo_app.dart';

class TweenAnimationPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tween Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tween Animation'),
        ),
        body: Container(
          color: Colors.white,
          child: LogoApp(),
        ),
      ),
    );
  }
}
