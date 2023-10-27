import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PersonDetailController extends GetxController {
 TextEditingController personNameController=TextEditingController();
 TextEditingController spouseNameController=TextEditingController();
 TextEditingController addressController=TextEditingController();
 TextEditingController dateController=TextEditingController();

 selectDOB(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
   context: context,
   initialDate: DateTime.now(),
   firstDate: DateTime(1950),
   lastDate: DateTime(2101),
  );
  if (picked != null) {
   String formattedDate = DateFormat('dd MMM yyyy').format(picked);
   dateController.text = formattedDate.toString();
  }
 }

}
