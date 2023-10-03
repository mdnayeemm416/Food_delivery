import 'package:flutter/material.dart';
import 'package:food_delivary/pages/home/FoodPageBody.dart';
import 'package:food_delivary/utilits/color.dart';
import 'package:food_delivary/widgets/Big_text.dart';
import 'package:food_delivary/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Container(
          margin: EdgeInsets.only(top: 15,bottom: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
              children: [
                Column(
                  children: [
                    BigText(text: "Bangladesh",color: AppColors.MainColor,),
                    Row(
                      children: [
                        SmallText(text: "Chandpur",color: AppColors.mainBlackColor),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: Center(child: Icon(Icons.search,color: Colors.white,)),
                  decoration: BoxDecoration(
                    color: AppColors.MainColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
         ),
         Expanded(
          child: SingleChildScrollView(child: FoodPageBody()))
        ],
      ),
    );
  }
}