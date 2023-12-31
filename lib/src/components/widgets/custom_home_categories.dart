import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../text/simple_text.dart';

class MyCategories extends StatelessWidget {
  final String text;
  const MyCategories({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: AppColors.lightgreyColor1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: CustomText(text: text),
        ),
      ),
    );
  }
}
