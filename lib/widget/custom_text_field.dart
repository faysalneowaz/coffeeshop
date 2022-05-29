import 'package:coffeshop/constent/colors.dart';
import 'package:flutter/material.dart';

class Text_Fieldcustom extends StatelessWidget {
  Text_Fieldcustom(
      {Key? key,
      required this.hint_text,
      required this.controller,
      this.backColor = WHITE_COLOR,
      this.font_size = 20.0,
      this.padding = 0.0,
      this.borderRedius = 0.0,
      this.m_left = 0,
      this.m_right = 0,
      this.m_top = 0,
      this.m_bottom = 0})
      : super(key: key);

  final TextEditingController controller;
  final Color backColor;
  double font_size;
  final String hint_text;
  double padding;
  double borderRedius;
  double m_top;
  double m_bottom;
  double m_left;
  double m_right;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.only(
          top: m_top, bottom: m_bottom, left: m_left, right: m_right),
      decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRedius))),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: font_size),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint_text,
          hintStyle: TextStyle(fontSize: font_size),
        ),
      ),
    );
  }
}
