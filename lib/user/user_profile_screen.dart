import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/constants/gaps.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "마이페이지",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
      ),
      body: Container(
        padding: const EdgeInsets.only(
          right: Sizes.size32,
          left: Sizes.size32,
          top: Sizes.size72,
        ),
        color: Colors.grey.shade200,
        child: Column(children: [
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
          const TabBotton(
            text: "추천받은 제품 목록",
          ),
          Gaps.v5,
          const TabBotton(
            text: "리뷰 관리",
          ),
          Gaps.v5,
          const TabBotton(
            text: "문의 목록",
          ),
          Gaps.v5,
          const TabBotton(
            text: "찜",
          ),
        ]),
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
          Expanded(child: Text(text)),
          const Text("5"),
          Gaps.h10,
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
