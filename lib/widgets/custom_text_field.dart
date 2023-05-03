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
  String? Function(String?)? validator,
  AutovalidateMode? autovalidateMode,
  int? maxLength,
}) {
  RxBool isObscure = true.obs;
  if (!isPassword) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: autovalidateMode,
      maxLength: maxLength,
      style: const TextStyle(color: primaryTextColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: bgColor2,
        prefixIcon: Icon(icon, color: mainColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: subtitleTextColor),
      ),
    );
  } else {
    return Obx(
      () => TextFormField(
        controller: controller,
        validator: validator,
        autovalidateMode: autovalidateMode,
        maxLength: maxLength,
        style: const TextStyle(color: primaryTextColor),
        obscureText: isObscure.value,
        decoration: InputDecoration(
          filled: true,
          fillColor: bgColor2,
          prefixIcon: Icon(icon, color: mainColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: subtitleTextColor),
          suffixIcon: InkWell(
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
        ),
      ),
    );
  }
}
