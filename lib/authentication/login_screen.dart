import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healfooyou_flutter/constants/gaps.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "login";
  static String routeURL = "/login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "healfoo you",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(Sizes.size52),
        child: Form(
            child: Column(
          children: [
            const FaIcon(
              FontAwesomeIcons.capsules,
              color: Colors.red,
              size: Sizes.size40,
            ),
            Gaps.v20,
            const Text(
              'Welcome',
              style: TextStyle(fontSize: Sizes.size36),
            ),
            Gaps.v32,
            TextFormField(
              decoration: const InputDecoration(hintText: '이메일'),
            ),
            Gaps.v32,
            TextFormField(
              decoration: const InputDecoration(
                hintText: '비밀번호',
              ),
            ),
            Gaps.v20,
            const FormButton(
              title: "로그인",
            ),
            Gaps.v20,
            const FormButton(
              title: "비밀번호",
            ),
            Gaps.v40,
            const AuthButton(
              text: 'Continue with Google',
              icon: FaIcon(FontAwesomeIcons.google),
            )
          ],
        )),
      ),
    );
  }
}

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    this.title = 'button',
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.all(Sizes.size10),
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(
            Radius.circular(Sizes.size10),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class AuthButton extends StatelessWidget {
  final String text;
  final FaIcon icon;

  const AuthButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.all(Sizes.size14),
        decoration: BoxDecoration(
            border:
                Border.all(color: Colors.grey.shade200, width: Sizes.size2)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: icon,
            ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
