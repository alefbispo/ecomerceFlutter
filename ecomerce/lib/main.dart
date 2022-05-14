import 'package:ecomerce/appColors/app_colors.dart';
import 'package:ecomerce/screens/longinScreen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.baseBlackColor,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
