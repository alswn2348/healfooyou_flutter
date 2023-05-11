import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healfooyou_flutter/constants/gaps.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("마이 페이지"),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    right: Sizes.size32,
                    left: Sizes.size32,
                    top: Sizes.size72,
                  ),
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(Sizes.size20),
                        color: Colors.white,
                        child: Row(
                          children: const [
                            Icon(Icons.person),
                            Text("name"),
                          ],
                        ),
                      ),
                      Gaps.v32,
                      Gaps.v5,
                      const TabBotton(
                        text: "리뷰 관리",
                      ),
                      Gaps.v5,
                      const TabBotton(
                        text: "문의 목록",
                      ),
                      Gaps.v20,
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Colors.grey.shade400,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    labelPadding: EdgeInsets.symmetric(
                      vertical: Sizes.size10,
                    ),
                    tabs: [
                      Icon(Icons.thumb_up_outlined),
                      FaIcon(FontAwesomeIcons.heart),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 200,
                  height: 500,
                  child: TabBarView(
                    children: [
                      Center(child: Text("page 1")),
                      Center(child: Text("page 2")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabBotton extends StatelessWidget {
  const TabBotton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.size20),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Text(text),
          ),
          const Text("5"),
          Gaps.h10,
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
