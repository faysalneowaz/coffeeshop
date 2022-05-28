import 'package:flutter/material.dart';


class Logo extends StatefulWidget {
  String? logo_url;
  Logo({Key? key,required this.logo_url}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Image.asset("${widget.logo_url}"),
              );
  }
}