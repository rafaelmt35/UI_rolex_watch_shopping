import 'package:flutter/material.dart';


class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    required this.fontsize, required this.fontfamily

  });

  final String text;
  final double fontsize;
  final Gradient gradient;
  final String fontfamily;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: TextStyle(fontSize: fontsize,fontFamily:fontfamily)),
    );
  }
}