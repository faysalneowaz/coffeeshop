import 'package:coffeshop/constent/colors.dart';
import 'package:coffeshop/model/main_menu_model.dart';
import 'package:coffeshop/widget/big_text.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<MainMenuModel> _mainMenuList = [
    MainMenuModel(
        menuID: 1,
        menuName: "Coffee",
        menuPhotoURL: "assets/images/coffee.jpg"),
    MainMenuModel(
        menuID: 2, menuName: "Tea", menuPhotoURL: "assets/images/tea.jpg"),
    MainMenuModel(
        menuID: 3,
        menuName: "Deasert",
        menuPhotoURL: "assets/images/deasert.jpg"),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 10.0,
                ),
                child: const Text(
                  "Menu",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.84,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: _mainMenuList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        margin: EdgeInsets.only(top: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "${_mainMenuList[index].menuPhotoURL}"))),
                        child: Center(
                          child: Text(
                            "${_mainMenuList[index].menuName}",
                            style: const TextStyle(
                                fontSize: 28.0,
                                color: WHITE_COLOR,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
