import 'package:flutter/material.dart';

import '../../components/widgets/custom_home_categories.dart';
import '../../components/widgets/custom_home_courses.dart';
import '../../core/files/category_files.dart';

class LandingPageListview extends StatelessWidget {
  const LandingPageListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeCategories.length,
          itemBuilder: (context, index) {
            return MyCategories(text: homeCategories[index]);
          }),
    );
  }
}
