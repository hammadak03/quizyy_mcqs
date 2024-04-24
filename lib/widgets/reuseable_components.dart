import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

reuseText(
  String text,
  Color color,
  double fontSize, {
  FontWeight? fontWeight,
}) {
  return Text(text,
      style: TextStyle(
          color: color, fontSize: fontSize.sp, fontWeight: fontWeight));
}
