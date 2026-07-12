import 'package:coffeeorderingapp/pages/cart_page.dart';
import 'package:coffeeorderingapp/pages/home_page.dart';
import 'package:coffeeorderingapp/pages/profile_page.dart';
import 'package:coffeeorderingapp/pages/search_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int currentIndex = 0;
  List <Widget> pages = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[ currentIndex ],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: ( index ) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Color(0xFF531607),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 40,
            ),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              size: 40,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              size: 40,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}