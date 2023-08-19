import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tutorscope_mobileapp/src/core/utils/app_assets.dart';
import 'package:tutorscope_mobileapp/src/screens/authScreens/login_screen.dart';

import '../../components/buttons/button_with_border.dart';
import '../../components/buttons/custom_button.dart';
import '../../components/text/simple_text.dart';
import '../../components/textfields/custom_textfield.dart';
import '../../core/utils/app_colors.dart';
import '../landing_screens/home_page.dart';

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

  String gender = "";
  bool hidePassword = true;
  Uint8List? _image;
  void selectImagefromgallery() async {
    Uint8List im = await pickImagefromGallery(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  void selectImagefromcamera() async {
    Uint8List im = await pickImagefromcamera(ImageSource.camera);
    setState(() {
      _image = im;
    });
  }

  pickImagefromGallery(ImageSource source) async {
    final ImagePicker _imagepicker = ImagePicker();
    XFile? _file = await _imagepicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    }
    print("No image selected");
  }

  pickImagefromcamera(ImageSource source) async {
    final ImagePicker _imagepicker = ImagePicker();
    XFile? _file = await _imagepicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    }
    print("No image selected");
  }

  clearimage() {
    setState(() {
      _image = null;
    });
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        builder: (builder) {
          return Container(
            height: 1200,
            color: Colors.transparent,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(
                      color: AppColors.gradientColor2,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Column(
                    children: [
                      const Icon(Icons.arrow_drop_down_sharp),
                      CustomText(
                        text: 'Select a Profile Picture',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            selectImagefromgallery();
                            Navigator.pop(context);
                          },
                          child: CustomText(
                            text: 'Select from Gallery',
                            fontWeight: FontWeight.normal,
                          )),
                      const Divider(
                        thickness: 1,
                        color: AppColors.primaryGrey,
                      ),
                      SizedBox(height: 10),
                      InkWell(
                          onTap: () {
                            selectImagefromcamera();
                            Navigator.pop(context);
                          },
                          child: CustomText(
                            text: 'Select from Camera',
                            fontWeight: FontWeight.normal,
                          )),
                      const Divider(
                        thickness: 1,
                        color: AppColors.primaryGrey,
                      ),
                      SizedBox(height: 10.0),
                      InkWell(
                          onTap: () {
                            if (_image != null) {
                              setState(() {
                                _image = null;
                              });
                              Navigator.pop(context);
                            }
                          },
                          child: CustomText(
                            text: 'Remove Photo',
                            fontWeight: FontWeight.normal,
                          )),
                      const Divider(
                        thickness: 1,
                        color: AppColors.primaryGrey,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

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
              top: 50,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                // width: double.infinity,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
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
                        Container(
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              _image != null
                                  ? CircleAvatar(
                                      radius: 64,
                                      backgroundImage: MemoryImage(_image!),
                                    )
                                  : const CircleAvatar(
                                      backgroundColor: AppColors.primaryWhite,
                                      radius: 64,
                                      backgroundImage:
                                          AssetImage("assets/images/pp.png")),
                              Positioned(
                                  bottom: -10,
                                  left: 80,
                                  child: IconButton(
                                      onPressed: _modalBottomSheetMenu,
                                      icon: const Icon(
                                        Icons.add_a_photo,
                                        color: Colors.black,
                                      )))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          hinttext: "Enter your username",
                          controller: usernameController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          hinttext: "Enter your address",
                          controller: usernameController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            RadioListTile(
                              title: CustomText(
                                text: "Male",
                                fontSize: 15.0,
                              ),
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.gradientColor2),
                              value: "male",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              },
                            ),
                            RadioListTile(
                              title: CustomText(
                                text: "Female",
                                fontSize: 15.0,
                              ),
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.gradientColor2),
                              value: "female",
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          hinttext: "Enter your email",
                          controller: emailController,
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
