import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_text_style.dart';

class CustomCartAppBar extends StatelessWidget {
  const CustomCartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Center(
        child: Row(
          children: [
            SizedBox(width: 18),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
            ),
            SizedBox(width: 14),
            Text(
              'Корзина',
              style: AppTextStyles.blackS20W700,
            ),
            Spacer(),
            Text(
              'Очистить',
              style: AppTextStyles.blackS16W400,
            ),
            SizedBox(width: 28),
          ],
        ),
      ),
    );
  }
}
