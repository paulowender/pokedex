import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTexts {
  static TextStyle primay = GoogleFonts.poppins();

  static TextStyle headline = primay.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    height: 3.2,
  );
  static TextStyle subtitle1 = primay.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    height: 1.6,
  );
  static TextStyle subtitle2 = primay.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 12,
    height: 1.6,
  );
  static TextStyle subtitle3 = primay.copyWith(
    fontWeight: FontWeight.bold,
    fontSize: 10,
    height: 1.6,
  );

  static TextStyle caption = primay.copyWith(
    fontSize: 8,
    height: 1.2,
  );

  static TextStyle body1 = primay.copyWith(
    fontSize: 14,
    height: 1.6,
  );

  static TextStyle body2 = primay.copyWith(
    fontSize: 12,
    height: 1.6,
  );

  static TextStyle body3 = primay.copyWith(
    fontSize: 10,
    height: 1.6,
    fontWeight: FontWeight.w400,
  );
}
