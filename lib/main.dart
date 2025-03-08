import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Cons_colors/Cons_colors.dart';
import 'home/views/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HW Test',
      theme: ThemeData(
        scaffoldBackgroundColor: kColorBg,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: MainScreen(),
    );
  }
}
