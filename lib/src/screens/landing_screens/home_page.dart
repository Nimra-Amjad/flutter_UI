import 'package:flutter/material.dart';
import 'package:tutorscope_mobileapp/src/components/text/simple_text.dart';
import 'package:tutorscope_mobileapp/src/components/textfields/custom_textfield.dart';
import 'package:tutorscope_mobileapp/src/core/utils/app_assets.dart';
import 'package:tutorscope_mobileapp/src/core/utils/app_colors.dart';

import '../../components/widgets/custom_home_categories.dart';
import '../../components/widgets/custom_home_courses.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Hi, Nimra Amjad",
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.primaryBlack)),
                    child: const Icon(Icons.person))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(clipBehavior: Clip.none, children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.gradientColor1,
                      AppColors.gradientColor2
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 30.0, bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Let's Learn",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.primaryWhite,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: "More!",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.primaryWhite,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DecoratedBox(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: AppColors.primaryWhite, width: 2)),
                        ),
                        child: CustomText(
                          text: "Get Start>",
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontColor: AppColors.primaryWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -28,
                left: 16,
                right: 16,
                child: CustomTextFormField(
                  hinttext: "Search",
                  controller: searchController,
                  suffixicon: Icons.search,
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            CustomText(
              text: "Categories",
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                child: Row(
                  children: [
                    CustomCategoriesBox(
                        image: AppAssets.mathIcon, text: "Math"),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomCategoriesBox(image: AppAssets.mathIcon, text: "Art"),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomCategoriesBox(
                        image: AppAssets.mathIcon, text: "Science"),
                    const SizedBox(
                      width: 15,
                    ),
                    CustomCategoriesBox(
                        image: AppAssets.mathIcon, text: "Computer"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Courses",
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CustomCoursesBox(
                      text1: "Mobile",
                      text2: "App Development",
                      boxColor: AppColors.blueColor,
                      price: '\$ 100'),
                  SizedBox(
                    width: 5,
                  ),
                  CustomCoursesBox(
                      text1: "Live",
                      text2: "Webinar",
                      boxColor: AppColors.gradientColor1,
                      price: '\$ 100'),
                  SizedBox(
                    width: 5,
                  ),
                  CustomCoursesBox(
                      text1: "Flutter",
                      text2: "Development",
                      boxColor: AppColors.primaryGreen,
                      price: '\$ 100'),
                  SizedBox(
                    width: 5,
                  ),
                  CustomCoursesBox(
                      text1: "BlockChain",
                      text2: "",
                      boxColor: AppColors.bluelight,
                      price: '\$ 100')
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
