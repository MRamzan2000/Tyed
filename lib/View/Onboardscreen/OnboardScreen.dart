// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';
import 'package:tyedapp/View/Signin/SignInScreen.dart';

import '../../Constant/Constants/founts/Constants.dart';
import '../../Widgets/OnboardButton.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});


  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: PageView(
            physics: ScrollPhysics(),
            controller: controller,
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: Get.height * 0.12,
                    top: 0,
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.2,
                          ),
                          SvgPicture.asset(
                            "assets/firstonboard.svg",
                            height: Get.height * 0.3,
                          ),
                          SizedBox(
                            height: Get.height * 0.04,
                          ),
                          Text(
                            "Safeguard Your Family's\nDocuments with tyed",
                            style: AppTextConstant.onBoardText
                                .copyWith(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: Get.height * 0.012,
                          ),
                          Text(
                            "Our app employs top-notch encryption and \nadvanced security measures to keep your data safe \nfrom prying eyes",
                            style: AppTextConstant.SimpleStyle.copyWith(
                                fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              SmoothPageIndicator(
                                effect: SlideEffect(
                                    activeDotColor:
                                        AppColorsConstants.AppMainColor),
                                controller: controller,
                                count: 2,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: Get.width * 0.32,
                    bottom: Get.height * 0.085,
                    child: CustomElevatedButtonOnboardScreen(
                        label: 'Next  >>>',
                        onPressed: () {
                          Get.offAllNamed(RoutesName.SignIn);
                        }),
                  ),
                  Positioned(
                    right: Get.width * 0.04,
                    top: Get.height * 0.05,
                    child: InkWell(
                        onTap: () {
                          Get.offAllNamed(RoutesName.SignIn);
                        },
                        child: Text('skip')),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    bottom: Get.height * 0.12,
                    top: 0,
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.2,
                          ),
                          SvgPicture.asset(
                            "assets/secondonboard.svg",
                            height: Get.height * 0.3,
                          ),
                          SizedBox(height: Get.height * 0.04),
                          Text(
                            " Create Your Custom tyed\nAgreement",
                            style: AppTextConstant.onBoardText
                                .copyWith(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: Get.height * 0.012,
                          ),
                          Text(
                            "Your reliable digital archive for all your tyed  documents,\nensuring convenient access whenever you require them",
                            style: AppTextConstant.SimpleStyle.copyWith(
                                fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: Get.height * 0.05,
                              ),
                              SmoothPageIndicator(
                                effect: SlideEffect(
                                    activeDotColor:
                                        AppColorsConstants.AppMainColor),
                                controller: controller,
                                count: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: Get.width * 0.32,
                    bottom: Get.height * 0.085,
                    child: CustomElevatedButtonOnboardScreen(
                        label: 'Next  >>>',
                        onPressed: () {
                          Get.offAllNamed(RoutesName.SignIn);
                        }),
                  ),
                  Positioned(
                    right: Get.width * 0.04,
                    top: Get.height * 0.05,
                    child: InkWell(
                        onTap: () {
                          Get.offAllNamed(RoutesName.SignIn);
                        },
                        child: Text('skip')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
