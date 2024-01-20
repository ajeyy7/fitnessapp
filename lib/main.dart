import 'package:fitnessapp/controller/provider/gender_controller.dart';
import 'package:fitnessapp/controller/provider/goal_provider.dart';
import 'package:fitnessapp/controller/provider/providerr.dart';
import 'package:fitnessapp/controller/provider/yogaorexersice.dart';
import 'package:fitnessapp/view/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controller/provider/focusarea.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>FocusareaProvider()),
        ChangeNotifierProvider(create: (context) => BottomController()),
        ChangeNotifierProvider(create: (context) => GenderController(),),
        ChangeNotifierProvider(create: (context) => Exersicepref(),),
        ChangeNotifierProvider(create: (context) => GoalProvider(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme:GoogleFonts.exo2TextTheme(),
            scaffoldBackgroundColor: Colors.indigo.shade300,
            appBarTheme: AppBarTheme(color: Colors.indigo.shade300,)),
        debugShowCheckedModeBanner: false,

        home: Splash_Page(),
      ),
    );
  }
}
