import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/home/home_screen.dart';
import 'package:healfooyou_flutter/survey/interests_screen.dart';
import 'package:healfooyou_flutter/user/user_profile_screen.dart';

class Navigator extends StatefulWidget {
  static String routeName = "home";
  static String routeURL = "/home";
  const Navigator({super.key});

  @override
  State<Navigator> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.menu),
            label: '메뉴',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.description),
            icon: Icon(Icons.description_outlined),
            label: '설문',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.house),
            icon: Icon(Icons.house_outlined),
            label: '홈',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: '마이',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        const InterestsScreen(),
        const HomeScreen(),
        const UserProfileScreen()
      ][currentPageIndex],
    );
  }
}
