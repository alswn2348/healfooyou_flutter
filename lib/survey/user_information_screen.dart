import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/constants/gaps.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

class UserInformationScreen extends StatefulWidget {
  static const String routeName = "userInfo";
  static const String routeURL = "/userInfo";

  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 20;

    return Scaffold(
      appBar: AppBar(
        title: const Text("맞춤 정보 입력"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          Sizes.size14,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("키"),
            Slider(
              value: currentSliderValue,
              max: 100,
              divisions: 5,
              label: currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(
                  () {
                    currentSliderValue = value;
                  },
                );
              },
            ),
            const Text("나이"),
            Slider(
              value: currentSliderValue,
              max: 100,
              divisions: 5,
              label: currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(
                  () {
                    currentSliderValue = value;
                  },
                );
              },
            ),
            const Text("몸무게"),
            Slider(
              value: currentSliderValue,
              max: 100,
              divisions: 5,
              label: currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(
                  () {
                    currentSliderValue = value;
                  },
                );
              },
            ),
            Gaps.v60,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FormButton(
                  text: "영 유아",
                ),
                Gaps.h80,
                FormButton(
                  text: "임산부",
                )
              ],
            ),
            Gaps.v60,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FormButton(
                  text: "알레르기",
                ),
                Gaps.h80,
                FormButton(
                  text: "특정질환",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120,
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size20,
        vertical: Sizes.size10,
      ),
      decoration: const BoxDecoration(color: Colors.grey),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
