import 'package:flutter/material.dart';
import 'package:food_delivary/utilits/dimesionss.dart';

class Expended_page extends StatelessWidget {
  const Expended_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: Dimension.height350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image1.jpg",
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
            ),
          )
        ],
      ),
    );
  }
}
