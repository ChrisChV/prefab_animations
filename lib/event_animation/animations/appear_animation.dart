import 'package:flutter/material.dart';

class AppearAnimation extends AnimatedWidget {
  Widget? child;
  CurveTween? tween;
  AppearAnimation({
    Key? key,
    required AnimationController controller,
    this.child,
    this.tween,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    if (tween == null) tween = CurveTween(curve: Curves.linear);
    return FadeTransition(
      opacity: tween!.animate(_progress),
      child: child,
    );
  }
}
