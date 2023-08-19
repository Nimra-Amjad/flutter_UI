import 'package:flutter/material.dart';

import '../../components/text/simple_text.dart';
import '../../components/widgets/custom_home_courses.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import '../components/categories_listview.dart';

class ViewAllAgencies extends StatefulWidget {
  const ViewAllAgencies({super.key});

  @override
  State<ViewAllAgencies> createState() => _ViewAllAgenciesState();
}

class _ViewAllAgenciesState extends State<ViewAllAgencies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 70,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 222, 217, 252),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0))),
                child: ListTile(
                  leading: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.primaryBlack,
                    ),
                  ),
                  title: CustomText(
                    text: "Popular Agencies",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: LandingPageListview(),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}










// import 'package:flutter/material.dart';

// import '../../components/text/simple_text.dart';
// import '../../components/widgets/custom_home_courses.dart';
// import '../../core/utils/app_assets.dart';
// import '../../core/utils/app_colors.dart';
// import '../components/categories_listview.dart';

// class ViewAllAgencies extends StatefulWidget {
//   const ViewAllAgencies({super.key});

//   @override
//   State<ViewAllAgencies> createState() => _ViewAllAgenciesState();
// }

// class _ViewAllAgenciesState extends State<ViewAllAgencies> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: double.maxFinite,
//           height: double.maxFinite,
//           child: Stack(
//             children: [
//               Positioned.fill(
//                 child: Container(
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                         color: Color.fromARGB(255, 206, 201, 236)),
//                     child: ListTile(
//                       leading: InkWell(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: const Icon(
//                           Icons.arrow_back_ios,
//                           color: AppColors.primaryBlack,
//                         ),
//                       ),
//                       title: CustomText(
//                         text: "Popular Agencies",
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     )),
//               ),
//               Positioned(
//                 top: 65,
//                 left: 0,
//                 right: 0,
//                 bottom: 0,
//                 child: Container(
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     color: AppColors.primaryWhite,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(50.0),
//                       topRight: Radius.circular(50.0),
//                     ),
//                   ),
//                   child: Padding(
//                     padding:
//                         EdgeInsets.only(right: 20.0, left: 20.0, top: 40.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: 6,
//                         ),
//                         LandingPageListview(),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         SingleChildScrollView(
//                           scrollDirection: Axis.vertical,
//                           child: Column(
//                             children: [
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image1,
//                                   ),
//                                   const SizedBox(
//                                     width: 5,
//                                   ),
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image2,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image3,
//                                   ),
//                                   const SizedBox(
//                                     width: 5,
//                                   ),
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image4,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image5,
//                                   ),
//                                   const SizedBox(
//                                     width: 5,
//                                   ),
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image6,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image5,
//                                   ),
//                                   const SizedBox(
//                                     width: 5,
//                                   ),
//                                   CustomCoursesBox(
//                                     text: "Mobile App",
//                                     text2: "14 Agencies",
//                                     image: AppAssets.image6,
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
