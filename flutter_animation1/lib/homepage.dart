import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class HomePAge extends StatefulWidget {
  @override
  _HomePAgeState createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.slowMiddle));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            body: Transform(
              transform:
                  Matrix4.translationValues(0, animation.value * width, 0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
