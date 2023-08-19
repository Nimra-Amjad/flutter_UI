import 'package:flutter/material.dart';
import 'package:tutorscope_mobileapp/src/components/text/simple_text.dart';
import 'package:tutorscope_mobileapp/src/components/textfields/custom_textfield.dart';
import 'package:tutorscope_mobileapp/src/core/utils/app_assets.dart';
import 'package:tutorscope_mobileapp/src/core/utils/app_colors.dart';
import 'package:tutorscope_mobileapp/src/screens/landing_screens/view_all_agencies.dart';

import '../../components/widgets/custom_home_courses.dart';
import '../components/categories_listview.dart';
import '../profile/profile_screen.dart';

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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.primaryWhite,
                        radius: 22,
                        backgroundImage: AssetImage(AppAssets.personIcon),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      CustomText(
                        text: "Hi, Nimra Amjad",
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.notifications)
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Categories",
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewAllAgencies()));
                  },
                  child: CustomText(
                    text: "View All",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const LandingPageListview(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Popular Agencies",
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewAllAgencies()));
                  },
                  child: CustomText(
                    text: "View All",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.primaryGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCoursesBox(
                          text: "Mobile App",
                          text2: "14 Agencies",
                          image: AppAssets.image1,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomCoursesBox(
                          text: "Mobile App",
                          text2: "14 Agencies",
                          image: AppAssets.image2,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCoursesBox(
                          text: "Mobile App",
                          text2: "14 Agencies",
                          image: AppAssets.image3,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomCoursesBox(
                          text: "Mobile App",
                          text2: "14 Agencies",
                          image: AppAssets.image4,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCoursesBox(
                          text: "Mobile App",
                          text2: "14 Agencies",
                          image: AppAssets.image5,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomCoursesBox(
                          text: "Mobile App",
                          text2: "14 Agencies",
                          image: AppAssets.image6,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
