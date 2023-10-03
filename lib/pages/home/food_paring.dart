import 'package:flutter/material.dart';
import 'package:food_delivary/utilits/dimesionss.dart';
import 'package:food_delivary/widgets/big_text.dart';
import 'package:food_delivary/widgets/icon_text.dart';
import 'package:food_delivary/widgets/small_text.dart';

class Food_paring_body extends StatefulWidget {
  const Food_paring_body({super.key});

  @override
  State<Food_paring_body> createState() => _Food_paring_bodyState();
}

class _Food_paring_bodyState extends State<Food_paring_body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
              left: Dimension.width30,
              top: Dimension.hight20,
              right: Dimension.width20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: Dimension.listviewimage,
                width: Dimension.listviewimage,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image1.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(Dimension.width10),
                  // height: Dimension.listviewtext,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimension.radius20),
                          bottomRight: Radius.circular(Dimension.radius20)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 225, 224, 224),
                            blurRadius: 10.0,
                            offset: Offset(0, 5)),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Bitter Orange Marinade"),
                      SizedBox(
                        height: Dimension.hight10,
                      ),
                      SmallText(text: "With chinese characteristics"),
                      SizedBox(
                        height: Dimension.hight10,
                      ),
                      iconSet(
                        width: Dimension.width10,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
