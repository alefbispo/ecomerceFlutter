import 'package:ecomerce/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class DetailScreenStyle {
  //commpanyTitleStyle
  static const TextStyle commpanyTitleStyle = TextStyle(
      color: AppColors.baseBlackColor,
      fontSize: 18,
      fontWeight: FontWeight.w600);

  //productModelTitleStyle
  static const TextStyle productModelTitleStyle = TextStyle(
    color: AppColors.baseDarkPinkColor,
  );
  //productModelTitleStyle
  static const TextStyle productPriceStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontSize: 20,
    fontWeight: FontWeight.w600
  );
  //productModelTitleStyle
  static const TextStyle productOldPriceStyle = TextStyle(
    color: AppColors.baseGrey60Color,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.lineThrough,
    
  );
}
