import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/home/home_screen.dart';
import 'package:healfooyou_flutter/survey/interests_screen.dart';
import 'package:healfooyou_flutter/user/user_profile_screen.dart';

class MainNavigator extends StatefulWidget {
  static String routeName = "home";
  static String routeURL = "/home";
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
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
            selectedIcon: Icon(Icons.house),
            icon: Icon(Icons.house_outlined),
            label: '홈',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.description),
            icon: Icon(Icons.description_outlined),
            label: '설문',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart),
            label: '랭킹',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: '마이',
          ),
        ],
      ),
      body: <Widget>[
        const HomeScreen(),
        const InterestsScreen(),
        const HomeScreen(),
        const UserProfileScreen(),
      ][currentPageIndex],
    );
  }
}
