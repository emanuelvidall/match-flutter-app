import 'package:flutter/material.dart';

class ImageShifter extends StatefulWidget {
  const ImageShifter({super.key});

  @override
  State<ImageShifter> createState() => _ImageShifterState();
}

class _ImageShifterState extends State<ImageShifter> {
  double _left = 100.0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(Duration.zero, () {
      setState(() {
        _left = -700.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: const Duration(seconds: 60),
            left: _left,
            width: 1200,
            height: 500,
            child: Image.asset('assets/images/home_background.png'),
          )
        ],
      ),
    );
  }
}
