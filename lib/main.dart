import 'package:coffeshop/constent/colors.dart';
import 'package:coffeshop/screens/selectorganization/selectorganization.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _apptheme(),
      home: const SelectOrganization(),
    );
    
  }
}
ThemeData _apptheme(){
  return ThemeData(
    primaryColor: BUTTON_BACKLOGIN,
    scaffoldBackgroundColor: PRIMARY_COLOR
  );
}

