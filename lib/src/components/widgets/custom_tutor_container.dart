import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../screens/tutor/tutor_profile.dart';
import '../text/simple_text.dart';

class CustomTutorWidget extends StatelessWidget {
  final String course;
  final String tutor;
  final String price;
  const CustomTutorWidget(
      {super.key,
      required this.course,
      required this.tutor,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  color: AppColors.primaryBlue),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "UI/UX first base",
                  fontColor: AppColors.primaryGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: "By-Nimra Amjad",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: "\$10 per hour",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TutorProfile()));
          },
          child: Container(
            padding: const EdgeInsets.all(14.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: AppColors.primaryBluelight),
            child: CustomText(
              text: "View Profile",
              fontColor: AppColors.primaryWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
