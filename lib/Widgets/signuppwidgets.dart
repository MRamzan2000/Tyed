// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../Constant/Constants/founts/Constants.dart';

class CustomTextFieldSignup extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? obscureText;
  final Callback? onTap;
  const CustomTextFieldSignup(
      {this.onChanged,
      this.controller,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.readOnly,
      this.obscureText,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2,
            offset: Offset(1.1, 2.1),
          ),
        ],
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      height: Get.height * 0.058,
      child: TextFormField(
        onTap: onTap,
        obscureText: obscureText ?? false,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType,
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextConstant.hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

