import 'package:coffeshop/constent/colors.dart';
import 'package:flutter/material.dart';

class Text_Fieldcustom extends StatefulWidget {
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
      this.m_bottom = 0,
      this.passview = false})
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
  bool passview;

  @override
  State<Text_Fieldcustom> createState() => _Text_FieldcustomState();
}

class _Text_FieldcustomState extends State<Text_Fieldcustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.padding),
      margin: EdgeInsets.only(
          top: widget.m_top,
          bottom: widget.m_bottom,
          left: widget.m_left,
          right: widget.m_right),
      decoration: BoxDecoration(
          color: widget.backColor,
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRedius))),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.passview,
        style: TextStyle(fontSize: widget.font_size),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint_text,
          hintStyle: TextStyle(fontSize: widget.font_size),
          suffix: InkWell(
            onTap: () {
              setState(() {
                widget.passview = !widget.passview;
              });
            },
            child: Icon(
              widget.passview ? Icons.visibility : Icons.visibility_off,
            ),
          ),

          /// This is Magical Function
        ),
      ),
    );
  }
}
