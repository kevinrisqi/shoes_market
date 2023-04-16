import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class RegisterController extends GetxController {
  TextEditingController fullName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    log('Register Controller INIT');
    super.onInit();
  }
}
