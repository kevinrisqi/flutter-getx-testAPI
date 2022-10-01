import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bgColor = Color(0xff1F1D2B);
const Color priceColor = Color(0xff2C96F1);

const double margin = 30.0;

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 16,
  fontWeight: semiBold,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
  fontSize: 14,
  fontWeight: medium,
);

FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
