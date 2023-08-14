import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color? buttonColor;
  final Color? textColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.buttonColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SimpleShadow(
        offset: const Offset(1, 1),
        sigma: 5,
        color: AppColors.primaryBlack.withOpacity(0.4),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            color: buttonColor ?? AppColors.gradientColor2,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: textColor ?? AppColors.primaryWhite,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
