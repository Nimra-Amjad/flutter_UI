import 'package:flutter/material.dart';
import 'package:tutorscope_mobileapp/src/screens/tutor/course_agencies.dart';

import '../../core/utils/app_colors.dart';
import '../text/simple_text.dart';

class CustomCoursesBox extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  const CustomCoursesBox({
    super.key,
    required this.text,
    required this.image,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CourseAgencies()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Container(
            width: 180,
            height: 200,
            decoration: const BoxDecoration(
              color: AppColors.lightgreyColor1,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18.0),
                  bottomRight: Radius.circular(18.0)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: text,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: text2,
                  fontColor: AppColors.primaryGrey,
                )
              ],
            )),
      ),
    );
  }
}
