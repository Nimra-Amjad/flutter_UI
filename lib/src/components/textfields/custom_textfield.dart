import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool? obsecuretext;
  final IconData? suffixicon;

  final Color? fillcolor;
  final TextInputType? keyboardtype;
  final Function()? ontapSuffixicon;
  const CustomTextFormField(
      {super.key,
      required this.hinttext,
      required this.controller,
      this.obsecuretext,
      this.suffixicon,
      this.ontapSuffixicon,
      this.fillcolor,
      this.keyboardtype});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardtype ?? TextInputType.text,
      obscureText: obsecuretext ?? false,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillcolor ?? AppColors.lightgreyColor1,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.transparent),
            borderRadius: BorderRadius.circular(20.0)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.transparent),
            borderRadius: BorderRadius.circular(20.0)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.transparent),
            borderRadius: BorderRadius.circular(20.0)),
        suffixIcon: GestureDetector(
          onTap: ontapSuffixicon,
          child: Icon(
            suffixicon,
            color: AppColors.gradientColor2,
          ),
        ),
        hintText: hinttext,
      ),
    );
  }
}
