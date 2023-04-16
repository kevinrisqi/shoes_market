import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/colors.dart';
import '../shared/sizes.dart';
import 'custom_text.dart';

Widget customButton(
  String title, {
  bool isLoading = false,
  Function()? ontap,
}) {
  return ElevatedButton(
    onPressed: isLoading ? () {} : ontap,
    style: ElevatedButton.styleFrom(
        backgroundColor: mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    child: Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: padding / 2 - 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLoading) ...[
            const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            ),
            SizedBox(
              width: padding / 2,
            ),
            customText(
              'Loading',
              fontSize: FontSize.s16,
              fontWeight: medium,
            ),
          ],
          if (!isLoading)
            customText(
              title,
              fontWeight: medium,
              fontSize: FontSize.s16,
            ),
        ],
      ),
    ),
  );
}
