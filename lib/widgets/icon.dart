// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_delivary/utilits/dimesionss.dart';

class IIcon extends StatelessWidget {
  final IconData icon;
  final Color BackgrounColor;
  final Color iconColor;
  final double size;
  const IIcon({
    Key? key,
    required this.icon,
    this.BackgrounColor = const Color(0xFFf7f6f4),
    this.iconColor = const Color(0xFF332d2b),
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(Dimension.width10),
        height: size,
        width: size,
        decoration: BoxDecoration(
            color: BackgrounColor,
            borderRadius: BorderRadius.circular(size / 2)),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
            size: 16,
          ),
        ));
  }
}
