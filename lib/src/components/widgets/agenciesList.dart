import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import '../../screens/tutor/tutor_profile.dart';
import '../text/simple_text.dart';

class AgenciesList extends StatelessWidget {
  final String academyName;
  final String noOfStudents;
  const AgenciesList(
      {super.key, required this.academyName, required this.noOfStudents});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: AppColors.lightgreyColor1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primaryWhite,
                    radius: 15,
                    backgroundImage: AssetImage(AppAssets.pp),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: academyName,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: noOfStudents,
                        fontColor: AppColors.primaryGrey,
                      ),
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TutorProfile()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.blueColor,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomText(
                      text: "View Profile",
                      fontColor: AppColors.primaryWhite,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
