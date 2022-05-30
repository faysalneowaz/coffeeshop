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
  bool _passview = true;
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
          Container(
            padding: const EdgeInsets.all(6.0),
            margin: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            decoration: const BoxDecoration(
                color: WHITE_COLOR,
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            child: TextField(
              controller: password_controller,
              obscureText: _passview,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "password",
                hintStyle: const TextStyle(fontSize: 20),
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      _passview = !_passview;
                    });
                  },
                  child: Icon(
                    _passview ? Icons.visibility_off : Icons.visibility,
                  ),
                ),

                /// This is Magical Function
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(14.0),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            decoration: const BoxDecoration(
                color: BUTTON_BACKLOGIN,
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            child: const Text(
              "Log in",
              textAlign: TextAlign.center,
              style: TextStyle(color: WHITE_COLOR, fontSize: 18.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Row(children: const [
              Expanded(
                  child: Divider(
                height: 0.5,
                color: BUTTON_BACKSAVVE,
              )),
              Text(
                "to get your access contact",
                style: TextStyle(
                  color: BUTTON_BACKSAVVE,
                ),
              ),
              Expanded(
                  child: Divider(
                color: BUTTON_BACKSAVVE,
              )),
            ]),
          ),
          const SizedBox(
            height: 10.0,
          ),
          DescriptionText(
            mainText: "+8801 ××× ××× ×××",
            text_position: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          DescriptionText(
            mainText: "example@organization.com",
            text_position: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          DescriptionText(
            mainText: "Change Organization",
            text_position: TextAlign.center,
            isUnderline: true,
          ),
        ],
      ),
    );
  }
}
