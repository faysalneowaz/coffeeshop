import 'package:coffeshop/constent/colors.dart';
import 'package:flutter/material.dart';

class DescriptionText extends StatefulWidget {
  String? mainText;
  double font_size;
  Color font_color;
  FontWeight font_weight;
  TextAlign text_position;
  bool isUnderline;
  DescriptionText(
      {Key? key,
      required this.mainText,
      this.font_size = 14,
      this.font_color = BUTTON_BACKSAVVE,
      this.font_weight = FontWeight.normal,
      this.text_position = TextAlign.left,
      this.isUnderline = false})
      : super(key: key);

  @override
  State<DescriptionText> createState() => _DescriptionTextState();
}

class _DescriptionTextState extends State<DescriptionText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.mainText}",
      style: TextStyle(
          fontSize: widget.font_size,
          color: widget.font_color,
          fontWeight: widget.font_weight,
          decoration: widget.isUnderline
              ? TextDecoration.underline
              : TextDecoration.none),
      textAlign: widget.text_position,
    );
  }
}
