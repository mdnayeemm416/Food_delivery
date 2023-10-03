// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_delivary/utilits/color.dart';

import 'package:food_delivary/widgets/small_text.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const IconText({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        SmallText(text: text)
      ],
    );
  }
}

class iconSet extends StatelessWidget {
  final double width;
  const iconSet({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconText(
            icon: Icons.circle_sharp,
            color: AppColors.iconColor1,
            text: "Normal"),
        SizedBox(
          width: width,
        ),
        IconText(
            icon: Icons.location_on, color: AppColors.MainColor, text: "1.7KM"),
        SizedBox(
          width: width,
        ),
        IconText(
            icon: Icons.access_time_filled_rounded,
            color: AppColors.iconColor2,
            text: "32min"),
        SizedBox(
          width: width,
        ),
      ],
    );
  }
}
