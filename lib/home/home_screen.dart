import 'package:flutter/material.dart';

final tabs = ["다이어트", "벌크업", "건강"];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    void closeDrawer() {
      Navigator.of(context).pop();
    }

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text("헬푸유"),
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
        drawer: Drawer(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('This is the Drawer'),
                ElevatedButton(
                  onPressed: closeDrawer,
                  child: const Text('Close Drawer'),
                ),
              ],
            ),
          ),
        ),
        // Disable opening the drawer with a swipe gesture.
        drawerEnableOpenDragGesture: false,
      ),
    );
  }
}
