import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healfooyou_flutter/constants/gaps.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';
import 'package:healfooyou_flutter/user/widget/persistent_tab_bar.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
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
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTabBar(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 5 / 1, // itme 비율 가로 / 세로
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 5 / 1,
                      child: Container(
                        padding: const EdgeInsets.all(Sizes.size20),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              color: Colors.grey.shade400,
                              width: 0.2,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircularProgressIndicator.adaptive(),
                            Text("Item $index"),
                            const Icon(Icons.thumb_up),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 5 / 1,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 5 / 1,
                      child: Container(
                        padding: const EdgeInsets.all(Sizes.size20),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              color: Colors.grey.shade400,
                              width: 0.2,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircularProgressIndicator.adaptive(),
                            Text("Item $index"),
                            const FaIcon(
                              FontAwesomeIcons.solidHeart,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
