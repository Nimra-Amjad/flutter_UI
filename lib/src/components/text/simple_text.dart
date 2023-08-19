import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double? fontSize;
  EdgeInsetsGeometry? padding;
  final String text;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final int? maxLines;
  final TextOverflow? textOverflow;

  CustomText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.padding,
      this.fontWeight,
      this.fontColor,
      this.textAlign,
      this.maxLines,
      this.textOverflow,
      this.fontStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: textOverflow,
          style: TextStyle(
            fontStyle: fontStyle,
            fontSize: fontSize ?? 17,
            fontWeight: fontWeight,
            color: fontColor,
          ),
        ));
  }
}
