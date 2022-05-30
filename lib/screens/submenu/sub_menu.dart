import 'package:coffeshop/screens/cart/cart_screen.dart';
import 'package:coffeshop/screens/login/loginscreen.dart';
import 'package:coffeshop/screens/menu/menu_screen.dart';
import 'package:coffeshop/screens/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';

class SubMenu extends StatefulWidget {
  const SubMenu({Key? key}) : super(key: key);

  @override
  State<SubMenu> createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Menu"),
      ),
      body: Container(),
    );
  }
}
