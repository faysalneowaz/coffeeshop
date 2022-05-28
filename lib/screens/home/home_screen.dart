import 'package:coffeshop/constent/colors.dart';
import 'package:coffeshop/screens/cart/cart_screen.dart';
import 'package:coffeshop/screens/login/Loginscreen.dart';
import 'package:coffeshop/screens/menu/menu_screen.dart';
import 'package:coffeshop/screens/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }


  List<Widget> _widgetOptions = <Widget>[
    MenuScreen(),
    WalletScreen(),
    CartScreen(),
    LoginScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: PRIMARY_COLOR,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            
          ),
        ],
        unselectedItemColor: BUTTON_BACKLOGIN,
        currentIndex: _selectedIndex,
        selectedItemColor: BUTTON_BACKLOGIN,
        onTap: _onItemTapped,
      ),
    );
  }
}