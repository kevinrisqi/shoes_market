import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoes_market/pages/register_page/register_controller.dart';
import 'package:shoes_market/shared/colors.dart';
import 'package:shoes_market/shared/constants.dart';
import 'package:shoes_market/shared/sizes.dart';
import 'package:shoes_market/widgets/custom_button.dart';
import 'package:shoes_market/widgets/custom_text.dart';
import 'package:shoes_market/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor1,
        body: GetBuilder<RegisterController>(builder: (c) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  SizedBox(
                    height: padding + 30,
                  ),
                  content(),
                  SizedBox(
                    height: padding,
                  ),
                  Obx(
                    () => customButton(
                      'Sign Up',
                      ontap: () {
                        // log('Sign Up');
                        c.handleRegister();
                      },
                      isLoading: c.isLoading.value,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

Widget header() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      customText(
        'Sign Up',
        fontWeight: semiBold,
        fontSize: FontSize.s24,
        color: Colors.white,
      ),
      customText(
        'Register and Happy Shopping',
        color: subtitleTextColor,
      ),
    ],
  );
}

Widget content() {
  return GetBuilder<RegisterController>(builder: (c) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(
          'Full Name',
          fontSize: FontSize.s16,
          fontWeight: medium,
          color: Colors.white,
        ),
        SizedBox(
          height: padding / 2.5,
        ),
        customTextField(
          'Your Full Name',
          image: iconPerson,
          controller: c.fullName,
        ),
        SizedBox(
          height: padding - 10,
        ),
        customText(
          'Username',
          fontSize: FontSize.s16,
          fontWeight: medium,
          color: Colors.white,
        ),
        SizedBox(
          height: padding / 2.5,
        ),
        customTextField(
          'Your Username',
          image: iconDot,
          controller: c.username,
        ),
        SizedBox(
          height: padding - 10,
        ),
        customText(
          'Email Address',
          fontSize: FontSize.s16,
          fontWeight: medium,
          color: Colors.white,
        ),
        SizedBox(
          height: padding / 2.5,
        ),
        customTextField(
          'Your Email Address',
          image: iconEmail,
          controller: c.email,
        ),
        SizedBox(
          height: padding - 10,
        ),
        customText(
          'Password',
          fontSize: FontSize.s16,
          fontWeight: medium,
          color: Colors.white,
        ),
        SizedBox(
          height: padding / 2.5,
        ),
        customTextField(
          'Your Password',
          image: iconPassword,
          controller: c.password,
          isPassword: true,
        ),
      ],
    );
  });
}
