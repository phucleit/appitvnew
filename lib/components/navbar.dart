import 'package:app_itv/screens/home/home_screen.dart';
import 'package:app_itv/screens/login/login_screen.dart';
import 'package:app_itv/screens/message/message_screen.dart';
import 'package:app_itv/screens/products/product_screen.dart';
import 'package:app_itv/screens/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  List<Widget> pageOption = [
    const HomeScreen(),
    const ProductScreen(),
    const ServicesScreen(),
    const MessageScreen(),
    const LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOption[selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Trang chủ'),
          TabItem(icon: Icons.list, title: 'Sản phẩm'),
          TabItem(icon: Icons.settings, title: 'Dịch vụ'),
          TabItem(icon: Icons.message, title: 'Tin nhắn'),
          TabItem(icon: Icons.people, title: 'Tài khoản'),
        ],
        backgroundColor: Colors.white,
        color: const Color(0xFF383838),
        activeColor: Colors.green,
        style: TabStyle.fixed,
         onTap: onItemTapped,
      )
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}


class Style extends StyleHook {
  @override
  double get activeIconSize => 40;

  @override
  double get activeIconMargin => 10;

  @override
  double get iconSize => 20;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(fontSize: 14, color: color);
  }
}