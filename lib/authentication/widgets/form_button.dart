import 'package:flutter/material.dart';
import 'package:healfooyou_flutter/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    this.title = 'button',
    this.onTap,
  });
  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null ? onTap!() : () {},
      child: FractionallySizedBox(
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
      ),
    );
  }
}
