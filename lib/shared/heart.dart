import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _colorTween;

  bool isFav = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _colorTween = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_controller);

    _controller.addListener(() {
      // setState(() {});
      print(_controller.value);
      print(_colorTween.value);
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }

      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) => IconButton(
        icon: Icon(
          Icons.favorite,
          color: _colorTween.value,
          size: 30,
        ),
        onPressed: () {
          isFav ? _controller.reverse() : _controller.forward();
        },
      ),
    );
  }
}
