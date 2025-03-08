import 'package:flutter/material.dart';

import 'Cons_colors/Cons_colors.dart';
import 'home/views/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HW Test',
      theme: ThemeData(
        scaffoldBackgroundColor: kColorBg,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kColorText),
          bodyMedium: TextStyle(color: kColorText),
          bodySmall: TextStyle(color: kColorText),
        ),
      ),
      home: MainScreen(),
    );
  }
}
