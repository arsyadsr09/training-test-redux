import 'package:flutter/material.dart';

import '../utils/colors_custom.dart';

class FormText extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final IconData? icon;
  final TextInputType? keyboard;
  final bool obscureText, readOnly;
  final int fontColor, iconColor, bgColor;
  final double borderRadius;
  // ignore: prefer_typing_uninitialized_variables
  final onChange;
  final FocusNode? focusNode;

  // ignore: use_key_in_widget_constructors
  const FormText(
      {this.controller,
      this.onChange,
      this.hint,
      this.keyboard,
      this.icon,
      this.fontColor = 0xFF282828,
      this.iconColor = 0xFF4f4f4f,
      this.bgColor = 0xB3FFFFFF,
      this.obscureText = false,
      this.readOnly = false,
      this.focusNode,
      this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  spreadRadius: 0,
                  blurRadius: 12,
                  color: ColorsCustom.black.withOpacity(0.15))
            ],
            color: Color(bgColor)),
        child: TextField(
          focusNode: focusNode != null ? focusNode! : null,
          style: TextStyle(
              fontSize: 15,
              color: Color(fontColor),
              fontWeight: FontWeight.w400,
              height: 1.5),
          controller: controller,
          keyboardType: keyboard,
          readOnly: readOnly,
          onChanged: (_) => onChange(),
          cursorHeight: 20,
          cursorColor: Color(iconColor),
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: icon != null
                ? Icon(
                    icon,
                    size: 22,
                    color: Color(iconColor),
                  )
                : null,
            focusColor: Color(iconColor),
            hoverColor: Color(iconColor),
            // contentPadding: EdgeInsets.symmetric(vertical: 11.5),
            // fillColor: Color(0xFFced6e0),
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Color(0xFF9D9D9D),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
            border: InputBorder.none,
          ),
        ));
  }
}
