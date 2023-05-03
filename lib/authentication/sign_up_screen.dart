import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/authentication/widgets/form_button.dart';
import 'package:healfooyou_flutter/constants/gaps.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "signup";
  static String routeURL = "/signup";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(Sizes.size72),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: '이름',
              ),
            ),
            Gaps.v20,
            TextFormField(
              decoration: const InputDecoration(
                hintText: '전화번호',
              ),
            ),
            Gaps.v20,
            TextFormField(
              decoration: const InputDecoration(
                hintText: '이메일',
              ),
            ),
            Gaps.v20,
            TextFormField(
              decoration: const InputDecoration(
                hintText: '비밀번호(6자 이상)',
              ),
            ),
            Gaps.v20,
            const FormButton(
              title: "회원가입",
            ),
          ],
        )),
      ),
    );
  }
}
