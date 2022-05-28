import 'package:coffeshop/constent/colors.dart';
import 'package:coffeshop/constent/widget/big_text.dart';
import 'package:coffeshop/constent/widget/description_text.dart';
import 'package:coffeshop/constent/widget/logo.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(logo_url: "assets/logo.PNG"),
          BigText(mainText: "Login",font_size: 22.0,font_weight: FontWeight.bold,),
          DescriptionText(mainText: "Use the username and password\n provided by your organization to log in",text_position: TextAlign.center,),
          Container(
            padding: EdgeInsets.all(6.0),
            margin: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(12.0))
            ),
            child: TextField(
              controller: username_controller,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "username",
                hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          ),

        ],
      ),
    );
  }
}