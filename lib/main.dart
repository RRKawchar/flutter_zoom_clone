import 'package:flutter/material.dart';
import 'package:flutter_zoom_clone/screens/login_screen.dart';
import 'package:flutter_zoom_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      routes: {
        "/login":(context)=>const LoginScreen(),
      },
      home: const LoginScreen(),
    );
  }
}

