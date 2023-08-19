import 'package:flutter/material.dart';

import '../../components/text/simple_text.dart';
import '../../core/utils/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        elevation: 0.0,
        title: CustomText(
          text: "My Profile",
          fontColor: AppColors.primaryBlack,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.more_vert_outlined,
              color: AppColors.primaryBlack,
            ),
          )
        ],
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 50.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Nimra Amjad",
                            fontColor: AppColors.primaryBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          CustomText(
                            text: "Senior Designer",
                            fontColor: AppColors.primaryGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryGrey),
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.edit,
                        color: AppColors.primaryGrey,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 36.0,
              ),
              CustomText(
                text: "Dashboard",
                fontColor: AppColors.primaryGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.lightGreen,
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      CustomText(
                        text: "Wallet",
                        fontColor: AppColors.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryGrey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.primaryBluelight,
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      CustomText(
                        text: "Acheivements",
                        fontColor: AppColors.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryGrey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.gradientColor1,
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      CustomText(
                        text: "Privacy",
                        fontColor: AppColors.primaryBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.primaryGrey,
                  )
                ],
              ),
              const SizedBox(
                height: 36.0,
              ),
              CustomText(
                text: "My Account",
                fontColor: AppColors.primaryGrey,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomText(
                text: "Switch To another Account",
                fontColor: AppColors.primaryBlack,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomText(
                text: "Log Out",
                fontColor: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
