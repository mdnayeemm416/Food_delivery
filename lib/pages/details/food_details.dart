import 'package:flutter/material.dart';
import 'package:food_delivary/pages/details/Hidden_text.dart';
import 'package:food_delivary/utilits/dimesionss.dart';
import 'package:food_delivary/widgets/icon.dart';
import 'package:get/get.dart';

import '../../utilits/color.dart';
import '../../widgets/Big_text.dart';
import '../../widgets/icon_text.dart';
import '../../widgets/small_text.dart';

class Food_page_details extends StatelessWidget {
  const Food_page_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: Dimension.height350,
                width: double.maxFinite,
                child: Image.asset(
                  "assets/image2.jpg",
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              top: Dimension.hight20,
              left: Dimension.hight15,
              right: Dimension.hight15,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IIcon(icon: Icons.arrow_back_ios),
                    IIcon(icon: Icons.add_shopping_cart_outlined)
                  ],
                ),
              )),
          Positioned(
              top: Dimension.height350 - 30,
              child: Container(
                padding: EdgeInsets.all(Dimension.width15),
                height: Dimension.screenHeight -
                    Dimension.height350 -
                    Dimension.height60,
                width: Dimension.screenWidth,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimension.radius20),
                        topRight: Radius.circular(Dimension.radius20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Bitter Orange Marinade",
                      size: Dimension.font30,
                    ),
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
                                    size: Dimension.hight15,
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
                    ),
                    SizedBox(
                      height: Dimension.hight20,
                    ),
                    BigText(
                      text: "Introdduce",
                      size: Dimension.font30,
                    ),
                    SizedBox(
                      height: Dimension.hight20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Hidden_text_view(
                            text:
                                "Embark on a culinary journey as we dive into the delectable realm of summer flavors. From revitalizing salads like Watermelon Feta and Grilled Corn Avocado to sizzling BBQ classics, including marinated chicken skewers and Portobello mushroom burgers, our exploration extends to the cooling sips of Cucumber Mint Lemonade and the mocktail delight of Watermelon Mojito. Discover the allure of sun-kissed seafood through our Grilled Garlic Butter Shrimp recipe, while frozen treats like Strawberry Basil Sorbet and Chocolate-Dipped Frozen Banana Bites provide the perfect sweet relief. Join the"),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        padding:
            EdgeInsets.only(top: Dimension.width20, bottom: Dimension.width20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimension.radius20),
            color: Color.fromARGB(179, 230, 229, 229)),
        child: Container(
          margin: EdgeInsets.only(
              left: Dimension.width20, right: Dimension.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(Dimension.hight20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimension.radius20)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.remove),
                      BigText(text: " 0 "),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(Dimension.hight20),
                decoration: BoxDecoration(
                    color: AppColors.MainColor,
                    borderRadius: BorderRadius.circular(Dimension.radius20)),
                child: BigText(
                  text: "\$0.08 | Add To Cart",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
