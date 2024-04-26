import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizyy_mcqs/routes/route_names.dart';
import 'package:quizyy_mcqs/routes/routes.dart';
import 'package:quizyy_mcqs/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => MaterialApp(
        title: 'Mehran University application',
        theme: ThemeData(
          scaffoldBackgroundColor: primaryBackgroundColor,
          textTheme: GoogleFonts.balooBhai2TextTheme(
              const TextTheme(bodyLarge: TextStyle(color: Colors.white))),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesNames.userLoginScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
