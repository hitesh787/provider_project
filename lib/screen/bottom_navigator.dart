import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/provider/bottom_navigator_provider.dart';

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    List<String> screen = [
      'Home',
      'Profile',
      'Cart',
      'Message',
      'Message',
    ];
    final bottomProvider = Provider.of<BottomNavigatorBarProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        screen[bottomProvider.selectedIndex],
        style: const TextStyle(fontSize: 50, color: Colors.white),
      )),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        height: 74,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GNav(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              duration: const Duration(microseconds: 400),
              onTabChange: (index) {
                bottomProvider.changeSelectedIndex(index);
              },
              gap: 8,
              tabBackgroundGradient: LinearGradient(
                colors: [
                  const Color(0xff53E88B).withOpacity(.10),
                  const Color(0xff15BE77).withOpacity(.10),
                ],
              ),
              activeColor: const Color(0xff53E88B),
              color: const Color(0xff53E88B),
              tabBorderRadius: 12,
              iconSize: 24,
              backgroundColor: Colors.white,
              style: GnavStyle.google,
              textStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),
              tabs: const [
                GButton(icon: Icons.home,text: ' Home',),
                GButton(icon: Icons.person,text: ' Profile',),
                GButton(icon: Icons.card_travel,text: ' Cart',),
                GButton(icon: Icons.message, text: ' Message',),
              ],
          ),
        ),
      ),
    );
  }
}
