import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizyy_mcqs/utils/responsive_screen.dart';
import 'package:quizyy_mcqs/widgets/reuseable_components.dart';
import '../utils/colors.dart';

//TODO: This button is used in 2 sides 1st in user Login and 2nd is Admin Panel.
loginButton({
  required BuildContext context,
  Icon? icon,
  VoidCallback? onTab,
  required String loginTxt,
}) {
  return GestureDetector(
    onTap: onTab,
      child: Container(
    margin: EdgeInsets.all(13.sp),
    height: ResponsiveScreen.height(context) * 0.10,
    width: ResponsiveScreen.width(context),
    decoration: BoxDecoration(
        border: Border.all(color: textPrimaryColor),
        borderRadius: BorderRadius.circular(24),
        color: backgroundSecondaryColor),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //work on latter
          Image.asset(
            "assets/icons/google.png",
            scale: 10,
          ),
          reuseText(loginTxt, whiteColor, 18, fontWeight: FontWeight.bold),
        ],
      ),
    ),
  ));
}
