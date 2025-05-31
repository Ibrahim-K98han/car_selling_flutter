import 'package:car_selling/app/utils/text_font_style.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.text,
    required this.requiredText,
  });

  final String text;
  final String requiredText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextFontStyle.headline12w400cFFFFFF.copyWith(
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(text: requiredText, style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
