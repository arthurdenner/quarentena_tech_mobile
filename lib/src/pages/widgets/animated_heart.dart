import 'package:flutter/material.dart';

class AnimatedHeart extends StatefulWidget {
  AnimatedHeart({Key key}) : super(key: key);

  @override
  _AnimatedHeartState createState() => _AnimatedHeartState();
}

class _AnimatedHeartState extends State<AnimatedHeart>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 250),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 1,
      end: 1.5,
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_animationController.isAnimating) {
          _animationController.reverse();
        } else {
          _animationController.repeat(reverse: true);
        }
      },
      child: ScaleTransition(
        scale: _animation,
        child: Image.asset(
          'assets/img/heart.png',
          excludeFromSemantics: true,
          height: 48,
        ),
      ),
    );
  }
}
