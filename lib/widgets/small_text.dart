// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color color;
  double size;
  SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xFFccc7c5),
    this.size =12 ,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w400
      ),
    );
  }
}
