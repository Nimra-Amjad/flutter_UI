import 'package:flutter/material.dart';
import 'package:tutorscope_mobileapp/src/core/utils/app_assets.dart';
import 'package:tutorscope_mobileapp/src/screens/login_screen.dart';

import '../components/buttons/button_with_border.dart';
import '../components/buttons/custom_button.dart';
import '../components/text/simple_text.dart';
import '../components/textfields/custom_textfield.dart';
import '../core/utils/app_colors.dart';
import 'landing_screens/home_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                width: double.infinity,
                height: 250,
                decoration:
                    const BoxDecoration(color: AppColors.gradientColor2),
                // child: Image.asset(AppAssets.login),
              ),
            ),
            Positioned(
              top: 180,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primaryWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        CustomText(
                          text: "Sign Up",
                          fontColor: AppColors.gradientColor2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          text: "User Name",
                          fontColor: AppColors.primaryBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          hinttext: "Enter your username",
                          controller: usernameController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          text: "Email",
                          fontColor: AppColors.primaryBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          hinttext: "Enter your email",
                          controller: emailController,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          text: "Password",
                          fontColor: AppColors.primaryBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          hinttext: "Enter your password",
                          controller: passwordController,
                          obsecuretext: hidePassword,
                          ontapSuffixicon: () {
                            setState(() {
                              hidePassword = !hidePassword;
                            });
                          },
                          suffixicon: hidePassword == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                            text: "Create Account",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 130,
                              height: 1,
                              color: AppColors.primaryGrey,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            CustomText(
                              text: "or",
                              fontColor: AppColors.primaryGrey,
                              fontSize: 15,
                            ),
                            Container(
                              width: 130,
                              height: 1,
                              color: AppColors.primaryGrey,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ButtonWithBorder(
                          image: AppAssets.googleIcon,
                          text: "Sign up with Google",
                          onTap: () {},
                          buttonColor: AppColors.primaryWhite,
                          textColor: AppColors.gradientColor2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "Already have an account? ",
                              fontColor: AppColors.primaryGrey,
                              fontSize: 18,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: CustomText(
                                text: "Log In",
                                fontColor: AppColors.gradientColor2,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
