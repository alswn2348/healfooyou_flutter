import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

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
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.red),
                    padding: const EdgeInsets.all(Sizes.size10),
                    child: const Text(
                      '메뉴',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const MenuButton(title: "도움말"),
                  const MenuButton(title: "공지사항"),
                  const MenuButton(title: "분석요청"),
                  const MenuButton(title: "문의하기"),
                  const MenuButton(title: "설정"),
                ],
              ),
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.grey.shade400,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.all(Sizes.size10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
