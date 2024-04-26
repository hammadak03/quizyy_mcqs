import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizyy_mcqs/widgets/reuseable_components.dart';

import '../utils/colors.dart';
import '../utils/responsive_screen.dart';

courseCard(
  BuildContext context,
  VoidCallback onTab,
  String uniName,
  String image,
) {
  return GestureDetector(
    onTap: onTab,
    child: Container(
        decoration: BoxDecoration(
            color: backgroundSecondaryColor,
            border: Border.all(color: textPrimaryColor),
            borderRadius: BorderRadius.circular(45)),
        width: ResponsiveScreen.width(context),
        height: ResponsiveScreen.height(context) * 0.197,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: textFieldColor,
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(45)),
              width: ResponsiveScreen.width(context) / 2.2,
              height: ResponsiveScreen.height(context) * 0.197,
              child: Image.asset(
                'assets/images/$image.png',
                scale: 3.7,
              ),
            ),
            SizedBox(
              width: 24.w,
            ),
            Column(
              children: [
                reuseText(uniName, Colors.white, 32,
                    fontWeight: FontWeight.bold),
                reuseText("University", Colors.white, 24),
                reuseText("All Subjects\nMCQs", textPrimaryColor, 22,
                    fontWeight: FontWeight.bold, textAlign: TextAlign.center),
              ],
            )
          ],
        )),
  );
}
