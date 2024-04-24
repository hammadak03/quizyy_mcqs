import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:quizyy_mcqs/utils/colors.dart';
import 'package:quizyy_mcqs/widgets/login_button.dart';
import 'package:quizyy_mcqs/widgets/reuseable_components.dart';

class UserLoginScreen extends StatelessWidget {
  const UserLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50.h, horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            reuseText("Welcome to Quizyy", textPrimaryColor, 36,
                fontWeight: FontWeight.bold),
            reuseText("Lets begin our journey!!", whiteColor, 20,
                fontWeight: FontWeight.w400),
            SizedBox(
              height: 30.h,
            ),
            Lottie.asset("assets/animations/computer.json"),
            SizedBox(
              height: 40.h,
            ),
            loginButton(context: context, loginTxt: "Login With Google")
          ],
        ),
      ),
    );
  }
}
