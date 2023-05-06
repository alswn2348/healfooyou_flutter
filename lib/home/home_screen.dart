import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final tabs = ["다이어트", "벌크업", "건강"];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const CupertinoSearchTextField(),
          bottom: TabBar(
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (var tab in tabs)
              Center(
                child: Text(tab),
              )
          ],
        ),
      ),
    );
  }
}
