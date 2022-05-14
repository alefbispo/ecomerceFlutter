import 'package:ecomerce/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class ShowAllWidget extends StatelessWidget {
  const ShowAllWidget({Key? key, this.leftText=''}) : super(key: key);

  final String leftText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            leftText,
            style: const TextStyle(
              fontSize: 17,
              color: AppColors.baseBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'show All',
            style: TextStyle(
              fontSize: 17,
              color: AppColors.baseDarkPinkColor,
            ),
          )
        ],
      ),
    );
  }
}
