import 'package:flutter/material.dart';
import '../../components/text/simple_text.dart';
import '../../components/widgets/agenciesList.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';

class CourseAgencies extends StatefulWidget {
  const CourseAgencies({Key? key}) : super(key: key);

  @override
  State<CourseAgencies> createState() => _CourseAgenciesState();
}

class _CourseAgenciesState extends State<CourseAgencies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              child: Image.asset(AppAssets.image1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Flutter Mobile Apps",
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryBlack),
                              shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.person_outline),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomText(text: "2.7k Students")
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryBlack),
                              shape: BoxShape.circle),
                          child: const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(Icons.star_border),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomText(text: "2.7k Ratings")
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "Total Agencies",
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SingleChildScrollView(
                  child: Column(
                    children: [
                      AgenciesList(
                          academyName: "ABC Academy",
                          noOfStudents: "2.7k Students"),
                      AgenciesList(
                          academyName: "XYZ Academy",
                          noOfStudents: "2.7k Students"),
                      AgenciesList(
                          academyName: "ABC Academy",
                          noOfStudents: "2.7k Students"),
                      AgenciesList(
                          academyName: "XYZ Academy",
                          noOfStudents: "2.7k Students")
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
