import 'package:flutter/material.dart';
import 'package:food_delivary/data/controller/popular_product_controller.dart';
import 'package:food_delivary/pages/details/expended_page.dart';
import 'package:food_delivary/pages/details/food_details.dart';
import 'package:food_delivary/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependence.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PropularProductController>().getPopularProductList();
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food App",
        home: MainFoodPage());
  }
}
