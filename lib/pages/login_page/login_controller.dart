import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool isLoading = false.obs;

  Future<void> loginAction() async {
    isLoading.toggle();
    await Future.delayed(const Duration(seconds: 3));
    isLoading.toggle();
  }

  @override
  void onInit() {
    log('Login Controller Init');
    super.onInit();
  }

  @override
  void dispose() {
    log('Login Controller Dispose');
    super.dispose();
  }
}
