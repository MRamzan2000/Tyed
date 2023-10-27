// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../Widgets/CustomButton.dart';

class Utils {
  static void showDialogBox3(
    BuildContext context, {
    String? title,
    String? title1,
    String? content,
    VoidCallback? onpress,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            color: const Color.fromRGBO(255, 255, 255, 1),
            height: 100,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title ?? "Default Title",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomElevatedButton(
                  onpress: onpress,
                  text: title1 ?? "Checkout",
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                  height: Get.height * 0.04,
                  width: Get.width * 0.35,
                  colors: AppColorsConstants.AppMainColor,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String? title;
  String? content;
  VoidCallback? onpress;

  static showDialogBox2(BuildContext context,
      {String? title, String? content, VoidCallback? onpress}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: Get.height * 0.29,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width * 0.08,
                    ),
                    Text(
                      "Rename",
                      style: TextStyle(fontSize: 14),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 3),
                              spreadRadius: 2,
                              blurRadius: 2,
                              color: Colors.grey.withOpacity(0.2),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "x",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SvgPicture.asset(
                  "assets/docs.svg",
                  height: Get.height * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.04,
                        vertical: Get.height * 0.012),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: AppColorsConstants.AppMainColor)),
                    hintText: "Document1:|",
                    hintStyle: AppTextConstant.SimpleStyle.copyWith(
                        color: AppColorsConstants.AppMainColor),
                    isCollapsed: true,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.06,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomElevatedButton(
                    height: Get.height * 0.04,
                    width: Get.width * 0.35,
                    text: "Save",
                    colors: AppColorsConstants.AppMainColor,
                    onpress: () {
                      Utils.showDialogBox3(
                        context,
                        title:
                            "To continue sharing documents, complete your payment.",
                        content:
                            "To continue sharing documents, complete your payment.",
                        onpress: () {
                          Get.toNamed(RoutesName
                              .PaymentMethod); // Your callback function
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<void> loadingDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          insetPadding: EdgeInsets.symmetric(
              horizontal: Get.height * 0.17, vertical: Get.height * 0.43),
          clipBehavior: Clip.hardEdge,
          content: Builder(
            builder: (context) {
              return SizedBox(
                // height: 30,
                child: Center(
                  child: CircularProgressIndicator(
                      color: AppColorsConstants.AppMainColor),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
