import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/core/theme/app_text_style.dart';

class CartItem extends StatelessWidget {
  final String productImage;
  final String productName;
  final String description;
  final String price;

  const CartItem(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: AppColors.white,
      elevation: 0.0,
      child: Row(
        children: [
          //Image
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                productImage,
                height: 88,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(productName),
                  Text(price),
                ],
              ),
              SizedBox(width: 200, child: Text(description)),
              Row(
                children: [
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 34,
                    height: 34,
                    child: Center(
                        child: Text(
                      '1',
                      style: AppTextStyles.blackS18W700,
                    )),
                  ),
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.add),
                  ),
                  SvgPicture.asset(
                    'assets/images/Delete.svg',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
