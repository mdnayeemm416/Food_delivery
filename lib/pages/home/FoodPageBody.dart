import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary/Models/product_models.dart';
import 'package:food_delivary/data/controller/popular_product_controller.dart';
import 'package:food_delivary/utilits/app_constant.dart';
import 'package:food_delivary/utilits/color.dart';
import 'package:food_delivary/utilits/dimesionss.dart';
import 'package:food_delivary/widgets/big_text.dart';
import 'package:food_delivary/widgets/icon_text.dart';
import 'package:food_delivary/widgets/small_text.dart';
import 'package:get/get.dart';

import 'food_paring.dart';

class FoodPageBody extends StatefulWidget {
  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentpageValue = 0.0;
  double scaleFactor = 0.8;
  double _height = Dimension.pageview;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentpageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<PropularProductController>(builder: (ProductItem) {
          return Container(
            height: Dimension.fullCarosel,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: ProductItem.popularProdductList.length,
                    itemBuilder: (context, index) {
                      return _buildPageItem(
                          index, ProductItem.popularProdductList[index]);
                    },
                  ),
                ),
              ],
            ),
          );
        }),
        GetBuilder<PropularProductController>(builder: (ProductItem) {
          return DotsIndicator(
            dotsCount: ProductItem.popularProdductList.isEmpty
                ? 1
                : ProductItem.popularProdductList.length,
            position: _currentpageValue.floor(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          );
        }),
        SizedBox(
          height: Dimension.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimension.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular'),
              SizedBox(
                width: Dimension.width20,
              ),
              BigText(
                text: '.',
                color: Colors.black26,
              ),
              SizedBox(
                width: Dimension.width20,
              ),
              SmallText(text: 'Food Paring'),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Food_paring_body()
      ],
    );
  }

  Widget _buildPageItem(int index, ProductModel popularProdduct) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentpageValue.floor()) {
      var curScale = 1 - (_currentpageValue - index) * (1 - scaleFactor);
      var curtrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curtrans, 0);
    } else if (index == _currentpageValue.floor() + 1) {
      var curScale =
          scaleFactor + (_currentpageValue - index + 1) * (1 - scaleFactor);
      var curtrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curtrans, 0);
    } else if (index == _currentpageValue.floor() - 1) {
      var curScale =
          scaleFactor + (_currentpageValue - index - 1) * (1 - scaleFactor);
      var curtrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curtrans, 0);
    } else {
      var curScale = 0.8;
      var curtrans = _height * (1 - curScale) / 2;
      matrix = Matrix4.diagonal3Values(1, curScale, 1)
        ..setTranslationRaw(0, curtrans, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageview,
            margin: EdgeInsets.only(
                left: Dimension.width10, right: Dimension.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(AppConstrains.BASEULR +
                      "/uploads/" +
                      popularProdduct.img!),
                )),
          ),
          Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                height: Dimension.pagetextview,
                margin: EdgeInsets.only(
                    left: Dimension.width30,
                    right: Dimension.width30,
                    bottom: Dimension.hight20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          offset: Offset(0, 5)),
                    ]),
                child: Container(
                  padding: EdgeInsets.only(
                      top: Dimension.hight10, left: Dimension.width10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Bitter Orange Marinade"),
                      SizedBox(
                        height: Dimension.hight10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: AppColors.MainColor,
                                      size: 15,
                                    )),
                          ),
                          SizedBox(
                            width: Dimension.width10,
                          ),
                          SmallText(text: "4.5"),
                          SizedBox(
                            width: Dimension.width10,
                          ),
                          SmallText(text: "1287 Comments")
                        ],
                      ),
                      SizedBox(
                        height: Dimension.hight10,
                      ),
                      iconSet(
                        width: Dimension.width20,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
