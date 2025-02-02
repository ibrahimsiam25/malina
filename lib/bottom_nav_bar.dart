import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/features/cart/presentation/views/cart_view.dart';
import 'package:malina/features/home/presentation/views/home_view.dart';

class BottomNavBarController extends StatefulWidget {
  const BottomNavBarController({super.key});
  @override
  State<BottomNavBarController> createState() => _BottomNavBarControllerState();
}

class _BottomNavBarControllerState extends State<BottomNavBarController> {
  int index = 2;
  bool showAdmin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 16,
        currentIndex: index,
        onTap: (int value) {
          setState(() {
            index = value;
          });
        },
        items: [
          bottomNavBarItem('assets/images/Лента.svg', 1, label: 'Лента'),
          bottomNavBarItem('assets/images/Избранное.svg', 1,
              label: 'Избранное'),
          bottomNavBarItem('assets/images/home.svg', 0, label: ''),
          bottomNavBarItem('assets/images/Профиль.svg', 1, label: 'Профиль'),
          bottomNavBarItem('assets/images/Корзина.svg', 1, label: 'Корзина'),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: [
          HomeView(),
          HomeView(),
          HomeView(),
          HomeView(),
          CartView(),
        ],
      ),
    );
  }
}

BottomNavigationBarItem bottomNavBarItem(String image, int num,
    {String? label}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      width: num == 0 ? 64 : 32.0,
      height: num == 0 ? 64 : 32.0,
      image,
    ),
    label: label,
  );
}
