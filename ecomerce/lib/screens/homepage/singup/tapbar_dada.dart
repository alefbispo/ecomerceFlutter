import 'package:ecomerce/models/single_product_model.dart';
import 'package:flutter/material.dart';

import '../../../widgets/single_product_widget.dart';

class TabBarBar extends StatelessWidget {
  final List<SingleProductModel> productData;

  const TabBarBar({Key? key, required this.productData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: productData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        var data = productData[index];
        return SingleProductWidget(
          onPressed: () {},
          productImage: data.productImage,
          productName: data.productName,
          productModel: data.productModel,
          productPrice: data.productPrice,
          productOldPrice: data.productOldPrice,
        );
      },
    );
  }
}
