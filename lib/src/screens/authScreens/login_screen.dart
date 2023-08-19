import 'package:flutter/material.dart';
import 'package:tutorscope_mobileapp/src/components/text/simple_text.dart';
import 'package:tutorscope_mobileapp/src/screens/authScreens/signup_screen.dart';

import '../../components/buttons/custom_button.dart';
import '../../components/textfields/custom_textfield.dart';
import '../../core/utils/app_colors.dart';
import '../landing_screens/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  width: double.infinity,
                  decoration:
                      const BoxDecoration(color: AppColors.gradientColor2),
                  // child: Image.asset(AppAssets.login),
                ),
              ),
              Positioned(
                top: 300,
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
                    padding: const EdgeInsets.only(
                        right: 20.0, left: 20.0, top: 40.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "Log In",
                            fontColor: AppColors.gradientColor2,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          CustomTextFormField(
                            hinttext: "Enter your email",
                            controller: emailController,
                          ),
                          const SizedBox(
                            height: 15.0,
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
                              text: "Log In",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "Don\'t have an account? ",
                                fontColor: AppColors.primaryGrey,
                                fontSize: 18,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignUpScreen()));
                                },
                                child: CustomText(
                                  text: "Sign Up",
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
      ),
    );
  }
}
