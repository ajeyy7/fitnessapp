import 'package:fitnessapp/controller/provider/providerr.dart';
import 'package:fitnessapp/view/components/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>BottomController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Bottom_Nav(),
      ),
    );
  }
}
