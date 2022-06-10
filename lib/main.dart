import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moon_pay_clone/utils/size_config.dart';
import 'package:provider/provider.dart';
import 'homepage.dart/main_screen.dart';
import 'utils/constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoonPay clone',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MainScreen(),
    );
  }
}
