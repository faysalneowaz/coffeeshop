import 'package:coffeshop/constent/colors.dart';
import 'package:coffeshop/widget/big_text.dart';
import 'package:coffeshop/widget/custom_text_field.dart';
import 'package:coffeshop/widget/description_text.dart';
import 'package:coffeshop/widget/logo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(logo_url: "assets/logo.PNG"),
          BigText(
            mainText: "Login",
            font_size: 22.0,
            font_weight: FontWeight.bold,
          ),
          DescriptionText(
            mainText:
                "Use the username and password\n provided by your organization to log in",
            text_position: TextAlign.center,
          ),
          Text_Fieldcustom(
            hint_text: "username",
            controller: username_controller,
            font_size: 20,
            padding: 6.0,
            m_left: 20,
            m_right: 20,
            borderRedius: 12.0,
          ),
          Text_Fieldcustom(
            hint_text: "password",
            controller: password_controller,
            font_size: 20,
            padding: 6.0,
            m_left: 20,
            m_right: 20,
            m_top: 10.0,
            borderRedius: 12.0,
          ),
        ],
      ),
    );
  }
}
