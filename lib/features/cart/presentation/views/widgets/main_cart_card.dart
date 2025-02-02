import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/core/theme/app_text_style.dart';

class MainCartCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final String totalPrice;
  const MainCartCard({
    super.key,
    required this.title,
    required this.children,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.only(top: 16, left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.grayS16W400,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0, left: 4.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: AppColors.gray,
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Divider(
            color: const Color.fromARGB(255, 236, 236, 238),
            thickness: 1,
            height: 0,
          ),
          SizedBox(height: 12),
          Column(
            spacing: 20.0,
            children: children,
          ),
          SizedBox(height: 20),
          Container(
            height: 56.0,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Text(
                  'Заказать',
                  style: AppTextStyles.whiteS16W500,
                ),
                Spacer(),
                Text.rich(
                  TextSpan(
                    text: '$totalPrice ',
                    children: [
                      TextSpan(
                        text: 'C',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  style: AppTextStyles.whiteS16W500,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
