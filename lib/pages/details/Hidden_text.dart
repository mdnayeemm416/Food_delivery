// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_delivary/utilits/color.dart';
import 'package:food_delivary/utilits/dimesionss.dart';
import 'package:food_delivary/widgets/small_text.dart';

class Hidden_text_view extends StatefulWidget {
  final String text;
  const Hidden_text_view({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<Hidden_text_view> createState() => _Hidden_text_viewState();
}

class _Hidden_text_viewState extends State<Hidden_text_view> {
  late String first_half;
  late String Second_half;

  bool hiddentext = true;

  double textHeight = Dimension.screenHeight / 3;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      first_half = widget.text.substring(0, textHeight.toInt());
      Second_half =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      first_half = widget.text;
      Second_half = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Second_half.isEmpty
          ? SmallText(text: first_half)
          : Column(
              children: [
                hiddentext
                    ? SmallText(
                        text: first_half + ". . .",
                        size: Dimension.font20,
                      )
                    : SmallText(
                        text: first_half + " " + Second_half,
                        size: Dimension.font20,
                      ),
                Container(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        hiddentext = !hiddentext;
                      });
                    },
                    child: Row(
                      children: [
                        SmallText(
                          text: "Show more",
                          color: AppColors.MainColor,
                        ),
                        Icon(
                          Icons.arrow_downward_outlined,
                          color: AppColors.MainColor,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
