import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_market/widgets/custom_snackbar.dart';

class RegisterController extends GetxController {
  TextEditingController fullName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isLoading = false.obs;

  Future<void> handleRegister() async {
    bool condition = fullName.text.isNotEmpty && username.text.isNotEmpty ||
        email.text.isNotEmpty ||
        password.text.isNotEmpty;
    if (condition) {
      isLoading.toggle();
      await Future.delayed(const Duration(seconds: 3));
      isLoading.toggle();
      customSnackbar('Your account success registered');
    } else {
      customSnackbar('Please fill the data', isError: true);
    }
  }

  @override
  void onInit() {
    log('Register Controller INIT');
    super.onInit();
  }
}
