import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/styles/detail_screen_styles.dart';
import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/single_product_model.dart';

class DetailScreen extends StatefulWidget {
  final SingleProductModel data;
  const DetailScreen({required this.data});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'images/Logo.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productName,
                  style: DetailScreenStyle.commpanyTitleStyle,
                ),
                const SizedBox(height: 5),
                Text(widget.data.productModel,
                    style: DetailScreenStyle.productModelTitleStyle),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailScreenStyle.commpanyTitleStyle,
                ),
                Text(
                  widget.data.productOldPrice.toString(),
                  style: DetailScreenStyle.commpanyTitleStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PreferredSize BuildAppBar() {
    //iconButton generate
    BuildIconButton({svgImages}) {
      return IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          svgImages,
          color: AppColors.baseBlackColor,
          width: 35,
          semanticsLabel: 'Fave',
        ),
      );
    }

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
          BuildIconButton(svgImages: SvgImages.heart),
          BuildIconButton(svgImages: SvgImages.upload),
        ],
      ),
    );
  }
}
