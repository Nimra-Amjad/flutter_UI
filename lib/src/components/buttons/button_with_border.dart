import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class ButtonWithBorder extends StatelessWidget {
  final String text;
  final String image;
  final Function() onTap;
  final Color? buttonBorderColor;
  final Color? buttonColor;
  final Color? textColor;

  const ButtonWithBorder({
    Key? key,
    required this.text,
    required this.onTap,
    this.buttonColor,
    this.textColor,
    this.buttonBorderColor,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(
            color: buttonBorderColor ?? AppColors.gradientColor2,
          ),
          color: buttonColor ?? AppColors.gradientColor2,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  color: textColor ?? AppColors.primaryWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
