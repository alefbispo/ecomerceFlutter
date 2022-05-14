import 'package:ecomerce/appColors/app_colors.dart';
import 'package:flutter/material.dart';

class SingleProductWidget extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productModel;
  final double productPrice;
  final double productOldPrice;
  final Function() onPressed;

  const SingleProductWidget({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.productModel,
    required this.productPrice,
    required this.productOldPrice,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  color: AppColors.baseGrey10Color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(productImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite,
                    size: 30,
                    color: AppColors.baseDarkOrangeColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      productModel,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: AppColors.baseDarkPinkColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$ $productPrice',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          '\$ $productOldPrice',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
