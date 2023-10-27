// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import 'package:tyedapp/viewModel/SigninController/SigninController.dart';

import '../../Widgets/CustomButton.dart';
import '../../Widgets/signuppwidgets.dart';
import '../../utils/Utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
   SignInController signInController =
      Get.find(tag: 'signInController');

  var sizeBoxHeight = SizedBox(height: Get.height * 0.015);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/signupsignin.png',
                  height: Get.height * 0.27,
                  width: Get.width * 0.58,
                ),
                SizedBox(
                  height: Get.height * 0.05,
                ),
                Text(
                  'Sign In',
                  style: AppTextConstant.BoldStyle,
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                CustomTextFieldSignup(
                  controller: signInController.emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Johnsondoe@gmail.com',
                  prefixIcon: Transform.scale(
                    scaleX: .4,
                    scaleY: .4,
                    child: SvgPicture.asset(
                      'assets/email.svg',
                    ),
                  ),
                ),
                sizeBoxHeight,
                CustomTextFieldSignup(
                  controller: signInController.passwordController,
                  obscureText: signInController.isShowPassword.value,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Password',
                  prefixIcon: Transform.scale(
                    scaleX: .4,
                    scaleY: .4,
                    child: SvgPicture.asset(
                      'assets/Lock.svg',
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      signInController.isShowPassword.value =
                          !signInController.isShowPassword.value;
                    },
                    child: Transform.scale(
                      scaleX: .7,
                      scaleY: .7,
                      alignment: Alignment.center,
                      child: signInController.isShowPassword.value
                          ? SvgPicture.asset(
                              'assets/eye.svg',
                            )
                          : Icon(Icons.password_outlined, color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.06,
                ),
                signInController.isSignInLoading.value
                    ? SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(
                            color: AppColorsConstants.AppMainColor),
                      )
                    : CustomElevatedButton(
                        width: Get.width * 0.4,
                        text: 'Sign In',
                        onpress: () {
                          signInController.signInHandler(
                              userEmail:
                                  signInController.emailController.text.trim(),
                              userPassword: signInController
                                  .passwordController.text
                                  .trim());
                        },
                      ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: AppTextConstant.SimpleStyle,
                    ),
                    SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Get.toNamed(RoutesName.Signup);
                      },
                      child: Text(
                        'Sign up',
                        style: AppTextConstant.BoldStyle.copyWith(
                            color: AppColorsConstants.AppMainColor,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
