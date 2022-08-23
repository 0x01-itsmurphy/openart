import 'package:flutter/cupertino.dart';

class GradientColors {
  static const List<Color> primaryGradientBlue = [
    Color(0xffffffff),
    Color(0xffeef5ff),
    Color(0xffd1e1f9),
    Color(0xff98b8e8),
  ];

  final Shader linearGradientBlue = const LinearGradient(
    colors: <Color>[
      Color(0xff0000EB),
      Color(0xff004BFB),
    ],
  ).createShader(
      // const Rect.fromLTWH(100.0, 100.0, 200.0, 100.0),
      const Rect.fromLTRB(0, 100, 20, 60));

  final Shader linearGradientYellow = const LinearGradient(
    colors: <Color>[
      Color(0xffFF9C00),
      Color(0xffFFDB03),
    ],
  ).createShader(const Rect.fromLTRB(0, 100, 20, 60));

  final Shader linearGradientBlueAccent = const LinearGradient(
    colors: <Color>[
      Color(0xff0038F5),
      Color(0xff9F03FF),
    ],
  ).createShader(const Rect.fromLTRB(0, 100, 20, 60));
}
