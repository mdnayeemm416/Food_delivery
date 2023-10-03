import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double fullCarosel = screenHeight / 2.63;
  static double pageview = screenHeight / 3.84;
  static double pagetextview = screenHeight / 7.03;
// width
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.26;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
// Height
  static double hight10 = screenHeight / 84.4;
  static double hight15 = screenHeight / 56.26;
  static double hight20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height100 = screenHeight / 8.44;
  static double height60 = screenHeight / 12;
  static double height350 = screenHeight / 2.41;
  static double restheight = screenHeight - (height350 + height350);

  // Radius
  static double radius10 = screenHeight / 84.4;
  static double radius20 = screenHeight / 42.2;

  // font size
  static double font20 = screenHeight / 42.2;
  static double font30 = screenHeight / 28.13;

  // listview
  static double listviewimage = screenHeight / 7.03;
  static double listviewtext = screenHeight / 6.03;
}
