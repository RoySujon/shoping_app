import 'package:flutter/material.dart';
import 'package:shoping_app/color.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(this.text,
      {super.key,
      this.fs = 20,
      this.ls,
      this.fw = FontWeight.w400,
      this.clr = black});
  final String text;
  final double? fs, ls;
  final FontWeight? fw;
  final Color? clr;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fs, fontWeight: fw, letterSpacing: ls, color: clr),
    );
  }
}
