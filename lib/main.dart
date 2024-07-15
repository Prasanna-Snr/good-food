import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:good_food/UiColors.dart';
import 'package:good_food/screens/farmer_screen.dart';
import 'package:good_food/screens/sign_in_screen.dart';
import 'package:good_food/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor:bgColor),
        useMaterial3: true,

      ),
      home: SignInScreen(),

    );
  }
}
