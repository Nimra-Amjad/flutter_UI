import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../core/utils/app_colors.dart';
import '../text/simple_text.dart';

class CustomCategoriesBox extends StatelessWidget {
  final String image;
  final String text;
  const CustomCategoriesBox(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      offset: const Offset(1, 1),
      sigma: 5,
      color: AppColors.primaryBlack.withOpacity(0.4),
      child: Container(
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: AppColors.lightgreyColor1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              Image.asset(
                image,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text: text,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
