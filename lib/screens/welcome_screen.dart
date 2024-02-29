import 'package:flutter/material.dart';
import 'package:flutter_match/widgets/sliding_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text('Oie'),
          ImageShifter(),
        ],
      ),
    ));
  }
}
