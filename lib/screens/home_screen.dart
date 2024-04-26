import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizyy_mcqs/utils/colors.dart';
import 'package:quizyy_mcqs/utils/responsive_screen.dart';
import 'package:quizyy_mcqs/widgets/course_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: ResponsiveScreen.width(context) / 18.w),
            child: const CircleAvatar(
              backgroundColor: textFieldColor,
              radius: 27,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  "https://static9.depositphotos.com/1371851/1141/i/450/depositphotos_11412487-stock-photo-smiling-man.jpg",
                ),
              ),
            ),
          )
        ],
        backgroundColor: primaryBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.bars,
            color: whiteColor,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: ResponsiveScreen.height(context) / 34.h,
            horizontal: ResponsiveScreen.width(context) / 14.w),
        child: ListView.builder(
            itemCount: 3,
            physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.w),
                child: Column(
                  children: [
                    courseCard(context, () {}, "Mehran", "mehran"),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
