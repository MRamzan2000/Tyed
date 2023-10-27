// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/View/ProfileScreen/ProfileScreen.dart';

import '../../Widgets/CustomButton.dart';
import '../../Widgets/CustomTextField1.dart';
import '../../viewModel/ProfileScreenController/ProfileScreenController.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  final ProfileScreenController controller = Get.put(ProfileScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColorsConstants.AppMainColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    height: Get.height * 0.13,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.03),
                      child: Container(
                        height: Get.height * 0.2,
                        width: Get.width * 0.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                            "assets/profileimagefinal.jpg",
                          )),
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: Get.width * 0.5,
                    top: Get.height * 0.13,
                    child: InkWell(
                      onTap: () {
                        controller.pickedImage();
                      },
                      child: SvgPicture.asset(
                        "assets/camera.svg",
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomTextField1(
                        controller: controller.firstNameController.value,
                        svgIcon: Transform.scale(
                            scale: .6,
                            child: SvgPicture.asset("assets/bulkprofile.svg")),
                        name: "First Name"),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    CustomTextField1(
                        controller: controller.lastNameController.value,
                        svgIcon: Transform.scale(
                            scaleX: .6,
                            scaleY: .6,
                            child: SvgPicture.asset("assets/bulkprofile.svg")),
                        name: "Last Name"),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    CustomTextField1(
                        controller: controller.emailController.value,
                        svgIcon: Transform.scale(
                            scaleX: .6,
                            scaleY: .6,
                            child: SvgPicture.asset("assets/message.svg")),
                        name: "Email"),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    CustomTextField1(
                        controller: controller.addressController.value,
                        svgIcon: Transform.scale(
                            scaleX: .6,
                            scaleY: .6,
                            child: SvgPicture.asset("assets/Location.svg")),
                        name: "Address"),
                    SizedBox(
                      height: Get.height * 0.04,
                    ),
                    CustomTextField1(
                        controller: controller.dateController.value,
                        svgIcon: Transform.scale(
                            scaleX: .6,
                            scaleY: .6,
                            child: SvgPicture.asset("assets/Calendar.svg")),
                        name: "MM DD YYYY"),
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                    CustomElevatedButton(
                      onpress: () {
                      },
                      text: "Save",
                      height: Get.height * 0.05,
                      width: Get.width * 0.42,
                      colors: AppColorsConstants.AppMainColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
