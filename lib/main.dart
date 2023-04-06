import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StackLesson(g: 200));
  }
}

class StackLesson extends StatelessWidget {
  late int g;

  StackLesson({required this.g});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 1.5 * g,
            height: g.toDouble(),
            color: Color(0xFFE30A17),
          ),
          Positioned(
            top: 0.25 * g,
            left: 0.25 * g,
            child: Container(
              width: 0.5 * g,
              height: 0.5 * g,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 0.3 * g,
            left: 0.3625 * g,
            child: Container(
              width: 0.4 * g,
              height: 0.4 * g,
              decoration: BoxDecoration(
                color: Color(0xFFE30A17),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 0.7 * g,
            top: 0.375 * g,
            child: Transform.rotate(
              angle: 1,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 0.25 * g,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
