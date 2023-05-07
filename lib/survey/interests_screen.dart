import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/constants/gaps.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

class InterestsScreen extends StatelessWidget {
  static const String routeName = "interests";
  static const String routeURL = "/interests";
  const InterestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("설문"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("관심있는 분야"),
            Gaps.v60,
            FormButton(
              icon: Icons.directions_walk,
              text: "건강",
            ),
            Gaps.v20,
            FormButton(
              icon: Icons.directions_run,
              text: "다이어트",
            ),
            Gaps.v20,
            FormButton(
              icon: Icons.directions_bike,
              text: "운동능력 향상",
            ),
          ],
        ),
      ),
    );
  }
}

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        Sizes.size10,
      ),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.size14),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: Sizes.size52,
          ),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
