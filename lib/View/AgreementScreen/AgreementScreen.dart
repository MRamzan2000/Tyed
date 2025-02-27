// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/Dialoge.dart';
import '../../Widgets/RoundButon2.dart';
import '../../viewModel/AgreementScreenController/AgreementScreenController.dart';

class AgreementScreen extends StatefulWidget {
  const AgreementScreen({super.key});
  @override
  State<AgreementScreen> createState() => _YesNoScreenState();
}

class _YesNoScreenState extends State<AgreementScreen> {
  final PersonController controller = Get.put(PersonController());
  String? selectedValue = "Yes";
  Color selectedColor =
      AppColorsConstants.AppMainColor; // Custom color for selected RadioButton
  Color unselectedColor =
      Colors.black; // Custom color for unselected RadioButton
  final AgreementScreenController agreement =
      Get.put(AgreementScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          svgImagePath: 'assets/30percent.svg',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: SizedBox(
              height: Get.height,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Is there anything else you would like to include in this tyed agreement?",
                    style: AppTextConstant.SimpleStyle,
                  ),
                  SizedBox(
                    height: Get.height * 0.015,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors
                            .white, // Set the background color of the container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.2), // Color of the shadow
                            spreadRadius: 5, // Spread radius
                            blurRadius: 7, // Blur radius
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      height: Get.height * 0.06,
                      width: Get.width,
                      child: Obx(() {
                        return Row(
                          children: [
                            Radio(
                              activeColor: selectedColor,
                              value: "No",
                              groupValue: agreement.selectedValue.value,
                              onChanged: (value) {
                                agreement.setSelecteValue(value!);
                              },
                            ),
                            Text(
                              "No",
                              style: TextStyle(
                                color: agreement.selectedValue == 'No'
                                    ? selectedColor
                                    : unselectedColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        );
                      })),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors
                            .white, // Set the background color of the container
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey
                                .withOpacity(0.2), // Color of the shadow
                            spreadRadius: 5, // Spread radius
                            blurRadius: 7, // Blur radius
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      height: Get.height * 0.06,
                      width: Get.width,
                      child: Obx(() {
                        return Row(
                          children: [
                            Radio(
                              activeColor: selectedColor,
                              value: "Yes, specify",
                              groupValue: agreement.selectedValue.value,
                              onChanged: (value) {
                                agreement.setSelecteValue(value!);
                              },
                            ),
                            Text(
                              "Yes, specify",
                              style: TextStyle(
                                  color:
                                      agreement.selectedValue == 'Yes, specify'
                                          ? selectedColor
                                          : unselectedColor,
                                  fontSize: 12),
                            )
                          ],
                        );
                      })),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("What would you like to add?",
                        style: AppTextConstant.SimpleStyle),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Set the background color of the container
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey
                              .withOpacity(0.2), // Color of the shadow
                          spreadRadius: 5, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: Offset(0, 2), // Offset of the shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: agreement.detailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          hintText:
                              "e.g. All shared living expenses will be paid from the joint bank account that both Parties deposit monthlyfunds into.",
                          hintStyle: AppTextConstant.hintText,
                          border: InputBorder.none),
                      maxLines: 7,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  RoundedButon2(
                    title: 'Add Another Clause',
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomElevatedButton(
                        onpress: () {
                          Get.toNamed(RoutesName.YourAndSpouseSign);
                        },
                        text: "Next",
                        height: Get.height * 0.05,
                        width: Get.width * 0.4,
                        colors: AppColorsConstants.AppMainColor),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
