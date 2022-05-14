import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/data/home-page-data/home_page_data.dart';
import 'package:ecomerce/routes/routes.dart';
import 'package:ecomerce/screens/detailScreen/detail_screen.dart';
import 'package:ecomerce/screens/homepage/singup/tapbar_dada.dart';
import 'package:ecomerce/styles/home_sreen_style.dart';
import 'package:ecomerce/swvImages/swv_images.dart';
import 'package:ecomerce/widgets/show_all_widgest.dart';
import 'package:ecomerce/widgets/single_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  AppBar buildAppBar() {
    return AppBar(
      bottom: const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text('All'),
          Text('Clothing'),
          Text('Shoes'),
          Text('Accesories'),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: const [
          Text(
            'Welcome',
            style: HomeScreenStyle.appBarUpperTitleStyle,
          ),
          Text(
            'Shopping',
            style: HomeScreenStyle.appBarButtomTitleStyle,
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(SvgImages.setting),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(SvgImages.search),
          ),
        ),
      ],
    );
  }

  Widget buildAdvertismentPlece() {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 170.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
        ),
        items: [
          'https://blog.creatopy.com/wp-content/uploads/2019/03/creative-advertising-and-pop-culture-pop-culture-ads.png',
          'https://www.creatopy.com/blog/wp-content/uploads/2018/05/advertisement-ideas-inspiration-advertising.png'
        ].map(
          (i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(i),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                );
              },
            );
          },
        ).toList(),
      ),
    );
  }

  Widget buildTrendingProduct({
    required String productImage,
    required String productName,
    required String productModel,
    required double productPrice,
  }) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 30,
        right: 20,
        bottom: 20,
      ),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(productImage),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: HomeScreenStyle.trendingProductNameStyle,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    productModel,
                    style: HomeScreenStyle.trendingProductModelStyle,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              elevation: 0,
              height: 45,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(0.7),
              ),
              onPressed: () {},
              child: Text(
                "\$ $productPrice",
                style: HomeScreenStyle.trendingProductPriceStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: buildAppBar(),
          body: TabBarView(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  buildAdvertismentPlece(),
                  const ShowAllWidget(
                    leftText: 'New Arrival',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      primary: true,
                      itemCount: sigleProductData.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        var data = sigleProductData[index];
                        return SingleProductWidget(
                          onPressed: () {
                            PageRouting.goToNextPage(
                              context: context,
                              navigateTo: DetailScreen(data: data),
                            );
                          },
                          productImage: data.productImage,
                          productModel: data.productModel,
                          productName: data.productName,
                          productOldPrice: data.productOldPrice,
                          productPrice: data.productPrice,
                        );
                      },
                    ),
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 16,
                  ),
                  const ShowAllWidget(
                    leftText: 'What\'s trending',
                  ),
                  buildTrendingProduct(
                    productImage:
                        'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                    productModel: 'Tank-tops',
                    productName: 'Classics mesh tank top',
                    productPrice: 15,
                  ),
                  buildTrendingProduct(
                    productImage:
                        'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                    productModel: 'Tank-tops',
                    productName: 'Classics mesh tank top',
                    productPrice: 20,
                  ),
                  buildTrendingProduct(
                    productImage:
                        'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
                    productModel: 'Tank-tops',
                    productName: 'Classics mesh tank top',
                    productPrice: 35.5,
                  ),
                  const ShowAllWidget(
                    leftText: 'History',
                  ),
                  Container(
                    height: 240,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      primary: true,
                      itemCount: sigleProductData.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 1.5,
                      ),
                      itemBuilder: (context, index) {
                        var data = sigleProductData[index];
                        return SingleProductWidget(
                          productImage: data.productImage,
                          productName: data.productName,
                          productModel: data.productModel,
                          productPrice: data.productPrice,
                          productOldPrice: data.productOldPrice,
                          onPressed: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),
              TabBarBar(productData: colothsData),
              TabBarBar(productData: shoesData),
              TabBarBar(productData: accessoriesData),
            ],
          ),
        ));
  }
}
