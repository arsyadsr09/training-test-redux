import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double? letterSpacing, fontSize, height;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final String? text;
  final bool italic, overflow;
  final int? maxLines;

  // ignore: use_key_in_widget_constructors
  const CustomText(this.text,
      {this.fontSize,
      this.color = Colors.white,
      this.fontWeight,
      this.letterSpacing,
      this.textAlign,
      this.height,
      this.overflow = false,
      this.italic = false,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ? TextOverflow.ellipsis : null,
      style: TextStyle(
          fontStyle: italic ? FontStyle.italic : null,
          color: color,
          height: height,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }
}
