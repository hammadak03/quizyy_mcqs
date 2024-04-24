import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizyy_mcqs/widgets/reuseable_components.dart';

import '../utils/colors.dart';

loginButton({
  required BuildContext context,
  Icon? icon,
  required String loginTxt,
}) {
  return GestureDetector(
      child: Container(
    margin: EdgeInsets.all(13.sp),
    height: MediaQuery.of(context).size.height * 0.10,
    width: MediaQuery.of(context).size.width,
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
