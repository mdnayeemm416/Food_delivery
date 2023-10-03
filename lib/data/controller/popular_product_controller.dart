// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_delivary/Models/product_models.dart';
import 'package:get/get.dart';

import 'package:food_delivary/data/repository/popular_product_repo.dart';

class PropularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PropularProductController({
    required this.popularProductRepo,
  });
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProdductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    if (response.statusCode == 200) {
      print("Get json");
      _popularProductList = [];
      _popularProductList.addAll(product.fromJson(response.body).products);
      update();
    } else {}
  }
}
