import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_market/shared/sizes.dart';

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;
const FontWeight extraBold = FontWeight.w800;

Widget customText(
  String text, {
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextOverflow? textOverflow,
  int? maxLines,
  bool? softWrap,
  Locale? locale,
}) {
  return Text(
    text,
    style: GoogleFonts.poppins(fontSize: fontSize, fontWeight: fontWeight),
    textAlign: textAlign,
    overflow: textOverflow,
    maxLines: maxLines,
    softWrap: softWrap,
    locale: locale,
  );
}
