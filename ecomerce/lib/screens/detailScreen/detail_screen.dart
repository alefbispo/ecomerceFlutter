import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/single_product_model.dart';

class DetailScreen extends StatefulWidget {
  final SingleProductModel data;
  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  BuildIconButton({svg}) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        svg,
        color: AppColors.baseBlackColor,
        width: 35,
        semanticsLabel: 'Fave',
      ),
    );
  }

  BuildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Reebok',
          style: TextStyle(
            color: AppColors.baseBlackColor,
          ),
        ),
        actions: [
          BuildIconButton(svg: SvgImages.heart),
          BuildIconButton(svg: SvgImages.upload),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
    );
  }
}
