import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/core/theme/app_text_style.dart';
import 'package:malina/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:malina/features/cart/presentation/views/widgets/main_cart_card.dart';

import 'custom_cart_appbar.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  int selectedIndex = 0;
  Widget _buildOptionButton(int index, String label) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 48.5, vertical: 10.5),
        decoration: BoxDecoration(
          color:
              selectedIndex == index ? AppColors.primary : AppColors.secondary,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.gray,
            width: 0.1,
          ),
        ),
        child: Text(
          label,
          style: selectedIndex == index
              ? AppTextStyles.whiteS16W500
              : AppTextStyles.blackS16W500,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomCartAppBar(),
        Expanded(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildOptionButton(0, 'Доставка'),
                  const SizedBox(width: 16),
                  _buildOptionButton(1, 'В заведении'),
                ],
              ),
              SizedBox(height: 14),
              selectedIndex == 0
                  ? MainCartCard(
                      title: 'Bellagio Coffee',
                      totalPrice: '250',
                      children: [
                          CartItem(
                            productImage: 'assets/images/shampo.png',
                            productName: 'Hadat Cosmetics',
                            description:
                                'Шампунь интенсивно восстанавливающий Hydro Intensive Repair Shampoo 250 мл',
                            price: '250',
                          ),
                        ])
                  : Column(
                      children: [
                        MainCartCard(
                          title: 'Hair',
                          totalPrice: '3900',
                          children: [
                            CartItem(
                              productImage: 'assets/images/shampo.png',
                              productName: 'Hadat Cosmetics',
                              description:
                                  'Шампунь интенсивно восстанавливающий Hydro Intensive Repair Shampoo 250 мл',
                              price: '1900',
                            ),
                            CartItem(
                              productImage: 'assets/images/shampo2.png',
                              productName: 'Hadat Cosmetics',
                              description: 'Увлажняющий кондиционер 150 мл',
                              price: '2000',
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        MainCartCard(
                          title: 'Preen Beauty',
                          totalPrice: '600',
                          children: [
                            CartItem(
                              productImage: 'assets/images/loreal.png',
                              productName: 'L’Oreal Paris Elseve',
                              description: 'Шампунь для ослабленных волос',
                              price: '600',
                            ),
                          ],
                        ),
                      ],
                    )
            ],
          ),
        ),
      ],
    );
  }
}
