import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../shared/colors.dart';
import '../shared/sizes.dart';

Widget customTextField(
  String hintText, {
  TextEditingController? controller,
  IconData? icon,
  String? image,
  Color? iconColor,
  Color? backgroundColor,
  bool isPassword = false,
}) {
  RxBool isObscure = true.obs;
  if (!isPassword) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: padding / 2, vertical: padding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor ?? bgColor2,
      ),
      child: Row(
        children: [
          if (icon == null)
            Image.asset(
              image!,
              width: 22 ,
              height: 22,
              color: iconColor,
            ),
          if (icon != null)
            Icon(
              icon,
              color: iconColor ?? mainColor,
            ),
          SizedBox(
            width: padding / 2,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(color: primaryTextColor),
              decoration: InputDecoration.collapsed(
                hintText: hintText,
                hintStyle: const TextStyle(color: subtitleTextColor),
              ),
            ),
          ),
        ],
      ),
    );
  } else {
    return Obx(
      () => Container(
        padding: EdgeInsets.symmetric(
            horizontal: padding / 2, vertical: padding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor ?? bgColor2,
        ),
        child: Row(
          children: [
            if (icon == null)
              Image.asset(
                image!,
                width: 22,
                height: 22,
                color: iconColor,
              ),
            if (icon != null)
              Icon(
                icon,
                color: iconColor ?? mainColor,
              ),
            SizedBox(
              width: padding / 2,
            ),
            Expanded(
              child: TextField(
                controller: controller,
                style: const TextStyle(color: primaryTextColor),
                obscureText: isObscure.value,
                decoration: InputDecoration.collapsed(
                  hintText: hintText,
                  hintStyle: const TextStyle(color: subtitleTextColor),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                isObscure.toggle();

                log('Is Hide: ${isObscure.value}');
              },
              child: isObscure.value
                  ? const Icon(
                      Icons.visibility_off,
                      color: subtitleTextColor,
                    )
                  : const Icon(
                      Icons.visibility,
                      color: subtitleTextColor,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
