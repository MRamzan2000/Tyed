// ignore_for_file: file_names

import 'package:get/get.dart';

class YesNoController extends GetxController {
  RxString selectedValue = "Yes".obs;

  void setSelectedValue(String value) {
    selectedValue.value = value;
  }
}
