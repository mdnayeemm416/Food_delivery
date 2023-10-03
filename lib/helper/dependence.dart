import 'package:food_delivary/data/api/api_client.dart';
import 'package:food_delivary/data/controller/popular_product_controller.dart';
import 'package:food_delivary/data/repository/popular_product_repo.dart';
import 'package:food_delivary/utilits/app_constant.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClint(appBaseUrl:AppConstrains.BASEULR));
  Get.lazyPut(() => PopularProductRepo(apiClint: Get.find()));
  Get.lazyPut(() => PropularProductController(popularProductRepo: Get.find()));
}
