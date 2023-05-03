import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_market/shared/colors.dart';

dynamic customSnackbar(String message, {bool isError = false}) {
  return Get.rawSnackbar(
    message: message,
    backgroundColor: isError ? alertColor : secondaryColor,
    borderRadius: 12,
  );
}
