import 'package:flutter/material.dart';
import 'package:tutorscope_mobileapp/src/components/text/simple_text.dart';
import 'package:tutorscope_mobileapp/src/core/utils/app_colors.dart';

import '../../components/widgets/skills_container.dart';

class TutorProfile extends StatefulWidget {
  const TutorProfile({super.key});

  @override
  State<TutorProfile> createState() => _TutorProfileState();
}

class _TutorProfileState extends State<TutorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 0.0,
        title: CustomText(
          text: "Nimra Amjad",
          fontColor: AppColors.primaryBlack,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.primaryBlack,
            )),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: AppColors.primaryBlue,
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomText(
                text: "ABC Academy",
                fontColor: AppColors.primaryBlack,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              const SizedBox(
                height: 17.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CustomText(
                        text: "21.k",
                        fontColor: AppColors.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                      CustomText(
                        text: "Followers",
                        fontColor: AppColors.primaryGrey,
                        fontSize: 15.0,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: "21.k",
                        fontColor: AppColors.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                      CustomText(
                        text: "Following",
                        fontColor: AppColors.primaryGrey,
                        fontSize: 15.0,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: "21.k",
                        fontColor: AppColors.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                      CustomText(
                        text: "Tags",
                        fontColor: AppColors.primaryGrey,
                        fontSize: 15.0,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 140,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.lightgreyColor,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: CustomText(
                      text: "+ Follow",
                      fontColor: AppColors.primaryBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.gradientColor1),
                        color: AppColors.lightgreyColor1,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: CustomText(
                      text: "Hire Me",
                      fontColor: AppColors.gradientColor2,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: "Courses",
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SkillContainer(text: "Mathematics"),
                  SkillContainer(text: "Mobile Apps"),
                  SkillContainer(text: "Ui/Ux"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  SkillContainer(text: "Mathematics"),
                  SkillContainer(text: "Biology"),
                  SkillContainer(text: "Mathematics"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    SkillContainer(text: "Flutter"),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: "About",
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                fontColor: AppColors.primaryGrey,
              )
            ],
          ),
        ),
      )),
    );
  }
}
