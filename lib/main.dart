import 'package:flutter/material.dart';
import 'package:work_design/Pages/home_page.dart';
import 'package:work_design/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.white, // Set the bottom app bar background color here
        ),
      ),
      home: const HomePage(),
    );
  }
}



