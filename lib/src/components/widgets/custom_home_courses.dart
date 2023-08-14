import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../text/simple_text.dart';

class CustomCoursesBox extends StatelessWidget {
  final String text1;
  final String text2;
  final Color boxColor;
  final String price;
  const CustomCoursesBox(
      {super.key,
      required this.text1,
      required this.text2,
      required this.boxColor,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(color: AppColors.lightgreyColor)),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: boxColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: Column(
                children: [
                  CustomText(
                    text: text1,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.primaryWhite,
                  ),
                  CustomText(
                    text: text2,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.primaryWhite,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 17.0),
            child: CustomText(text: price),
          )
        ],
      ),
    );
  }
}
