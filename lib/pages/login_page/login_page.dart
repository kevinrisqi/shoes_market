import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_market/pages/login_page/login_controller.dart';
import 'package:shoes_market/routes/route_name.dart';
import 'package:shoes_market/shared/colors.dart';
import 'package:shoes_market/shared/sizes.dart';
import 'package:shoes_market/widgets/custom_button.dart';
import 'package:shoes_market/widgets/custom_text.dart';
import 'package:shoes_market/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: GetBuilder<LoginController>(builder: (c) {
        return SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: padding + 10,
                ),
                content(),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget header() {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
            'Login',
            fontSize: 24,
            fontWeight: semiBold,
            color: primaryTextColor,
          ),
          customText(
            'Sign In to Continue',
            color: subtitleTextColor,
          ),
        ],
      ),
    );
  }

  Widget content() {
    return GetBuilder<LoginController>(
      builder: (c) {
        return Form(
          key: c.keys,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                  'Email Address',
                  fontSize: 16,
                  fontWeight: medium,
                  color: primaryTextColor,
                ),
                SizedBox(
                  height: padding / 2,
                ),
                customTextField(
                  'Your Email Address',
                  controller: c.email,
                  icon: Icons.email,
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value == '') {
                      return 'Email must be filled';
                    }
                    if (!c.emailRegex.hasMatch(value)) {
                      return 'Email not valid';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: padding - 10,
                ),
                customText(
                  'Password',
                  fontSize: 16,
                  fontWeight: medium,
                  color: primaryTextColor,
                ),
                SizedBox(
                  height: padding / 2,
                ),
                customTextField(
                  'Your Password',
                  controller: c.password,
                  icon: Icons.key,
                  isPassword: true,
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value == '') {
                      return 'Password must be filled';
                    }
                    if (!c.passwordRegex.hasMatch(value)) {
                      return 'Password must have more 8 length, uppercase & number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: padding,
                ),
                Obx(
                  () => customButton(
                    'Sign In',
                    isLoading: c.isLoading.value,
                    ontap: () async {
                      log('Login');
                      c.loginAction();
                    },
                  ),
                ),
                SizedBox(
                  height: padding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customText(
                      'Don\'t have an account? ',
                      color: subtitleTextColor,
                      fontSize: FontSize.s12,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(RouteName.register),
                      child: customText(
                        'Sign up',
                        color: mainColor,
                        fontSize: FontSize.s12,
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
