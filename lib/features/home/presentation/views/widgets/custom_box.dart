
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_style.dart';

class CustomBox extends StatelessWidget {
  final String text;
  final Color color;

  const CustomBox({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      width: 86,
      height: 86,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.bottomCenter,
      child: Text(
        text,
        style: AppTextStyles.blackS12W400,
        textAlign: TextAlign.center,
      ),
    );
  }
}
