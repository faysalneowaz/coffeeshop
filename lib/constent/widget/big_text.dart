import 'package:coffeshop/constent/colors.dart';
import 'package:flutter/material.dart';


class BigText extends StatefulWidget {
  String? mainText;
  double font_size;
  Color font_color;
  FontWeight font_weight;
  BigText({Key? key, required this.mainText,this.font_size  = 18, this.font_color = BOLD_TEXT_Color,this.font_weight = FontWeight.normal}) : super(key: key);

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {

    return Text("${widget.mainText}",style: TextStyle(fontSize: widget.font_size, color: widget.font_color,fontWeight: widget.font_weight),);
    
  }
}