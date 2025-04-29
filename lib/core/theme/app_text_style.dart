// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart' as gts;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

extension AppTextStyle on TextStyle {
  TextStyle get tiemposHeadline32Regular => TextStyle(
        fontFamily: 'TiemposHeadline',
        fontSize: 32.sp,
        height: 1.0,
      );

  gts.TextStyle get rufina24Regular => GoogleFonts.rufina(
        color: Color(0xFF0E121B),
        fontSize: 24.sp,
        letterSpacing: -0.2,
      );

  gts.TextStyle get interRegular14 => GoogleFonts.inter(
        fontSize: 14.sp,
        height: 20.sp / 14.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xFF414042).withAlpha(200),
        letterSpacing: 2,
      );

  gts.TextStyle get interMedium16 => GoogleFonts.inter(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        height: 24.sp / 16.sp,
        fontSize: 16.sp,
        letterSpacing: -0.2,
      );

  TextStyle get sfProSemiBold16 => TextStyle(
      fontFamily: 'SFProDisplay',
      color: Color(0xFF75563D),
      fontWeight: FontWeight.w600,
      height: 24.sp / 16.sp,
      fontSize: 16.sp,
      letterSpacing: -0.2);
}
