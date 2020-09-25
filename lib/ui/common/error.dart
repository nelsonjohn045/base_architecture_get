import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:base_design/utils/colors.dart';

void errorWidget(String title, String msg) {
  return Get.snackbar(
      title, // title
      msg,
      icon: const Icon(Icons.error, color: Colors.red),
      shouldIconPulse: false,
      barBlur: 20,
      isDismissible: true,
      duration: const Duration(seconds: 5),
      mainButton: FlatButton(
          onPressed: () => Get.back(),
          child: const Icon(Icons.close, color: Colors.red)));
}

void successWidget(String title, String msg) {
  return Get.snackbar(
      title, // title
      msg,
      icon: const Icon(Icons.error, color: AppColors.kGreen),
      shouldIconPulse: false,
      barBlur: 20,
      isDismissible: true,
      duration: const Duration(seconds: 5),
      mainButton: FlatButton(
          onPressed: () => Get.back(),
          child: const Icon(Icons.close, color: AppColors.kSwatch)));
}
