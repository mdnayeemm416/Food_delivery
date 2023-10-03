// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  TextOverflow overflow;
  BigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.size =20 ,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400
      ),
    );
  }
}
