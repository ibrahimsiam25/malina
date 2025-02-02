import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/core/theme/app_text_style.dart';

class CartItem extends StatefulWidget {
  final String productImage;
  final String productName;
  final String description;
  final String price;
  final int initialNumber;

  const CartItem({
    super.key,
    required this.productImage,
    required this.productName,
    required this.description,
    required this.price,
    this.initialNumber = 1,
  });

  @override
  CartItemState createState() => CartItemState();
}

class CartItemState extends State<CartItem> {
  int number;

  CartItemState() : number = 1;

  @override
  void initState() {
    super.initState();
    number = widget.initialNumber;
  }

  void _decrementNumber() {
    setState(() {
      if (number > 1) {
        number--;
      }
    });
  }

  void _incrementNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        Expanded(
          flex: 1,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                widget.productImage,
                height: 96,
              ),
            ),
          ),
        ),
        SizedBox(width: 9),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.productName,
                      style: AppTextStyles.blackS16W500,
                    ),
                    Text.rich(
                      TextSpan(
                        text: '${widget.price} ',
                        children: [
                          TextSpan(
                            text: 'C',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      style: AppTextStyles.blackS16W500,
                    ),
                  ],
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    widget.description,
                    style: AppTextStyles.grayS12W400,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    InkWell(
                      onTap: _decrementNumber,
                      radius: 10,
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                    SizedBox(
                      width: 34,
                      height: 34,
                      child: Center(
                        child: Text(
                          number.toString(),
                          style: AppTextStyles.blackS18W700,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: _incrementNumber,
                      radius: 10,
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/images/Delete.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
