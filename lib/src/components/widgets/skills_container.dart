import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../text/simple_text.dart';

class SkillContainer extends StatelessWidget {
  final String text;
  const SkillContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: AppColors.lightgreyColor1),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomText(
            text: text,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
