import 'package:flutter/material.dart';
import 'package:flutter_animation/fade_route.dart';
import 'package:flutter_animation/hero_animation_page.dart';
import 'package:flutter_animation/next_page.dart';
import 'package:flutter_animation/stagger_animation_page.dart';
import 'package:flutter_animation/tween_animation_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Builder(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Flutter Animation Demo"),
                ),
                body: SafeArea(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        RawMaterialButton(
                          child: Text("补间动画"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              FadeRoute(
                                builder: (context) {
                                  return TweenAnimationPage();
                                },
                              ),
                            );
                          },
                        ),
                        RawMaterialButton(
                          child: Text("路由动画"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              FadeRoute(
                                builder: (context) {
                                  return NextPage();
                                },
                              ),
                            );
                          },
                        ),
                        RawMaterialButton(
                          child: Text("Hero动画"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              FadeRoute(
                                builder: (context) {
                                  return HeroAnimationPage();
                                },
                              ),
                            );
                          },
                        ),
                        RawMaterialButton(
                          child: Text("交错动画"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              FadeRoute(
                                builder: (context) {
                                  return StaggerAnimationPage();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
          // StaggerDemo (),
          ),

      /*Builder(
          builder: (context) => Container(
              color: Colors.white,
              child: RawMaterialButton(
                child: Text("进入下一页"),
                onPressed: () {
                  Navigator.push(context, FadeRoute(builder: (context) {
                    return NextPage();
                  }));
                },
              ))
         // StaggerDemo (),
        ),*/
    );
  }
}
