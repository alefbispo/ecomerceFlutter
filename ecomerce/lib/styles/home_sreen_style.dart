import 'package:flutter/material.dart';

import '../appColors/app_colors.dart';

class HomeScreenStyle {
  // appBarUpperTitleStyle styles
  static const TextStyle appBarUpperTitleStyle = TextStyle(
    color: AppColors.baseBlackColor,
    fontWeight: FontWeight.bold,
  );

  //appBarButtomTitleStyle styles
  static const TextStyle appBarButtomTitleStyle = TextStyle(
    color: Colors.grey,
    fontSize: 13,
  );

  //trendingProductNameStyle styles
  static const TextStyle trendingProductNameStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  //trendingProductNameStyle styles
  static const TextStyle trendingProductModelStyle = TextStyle(
    fontSize: 14,
    color: AppColors.baseDarkPinkColor,
  );

  //trendingProductNameStyle styles
  static const TextStyle trendingProductPriceStyle = TextStyle(
    fontSize: 18,
    color: AppColors.baseWhiteColor,
  );
}
