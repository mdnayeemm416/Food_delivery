// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_delivary/utilits/app_constant.dart';
import 'package:get/get.dart';

import 'package:food_delivary/data/api/api_client.dart';

class PopularProductRepo extends GetxService {
  final ApiClint apiClint;
  PopularProductRepo({
    required this.apiClint,
  });

  Future<Response> getPopularProductList() async {
    return await apiClint.getData(AppConstrains.PRODUCTRUL);
  }
}
