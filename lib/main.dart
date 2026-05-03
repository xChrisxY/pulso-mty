import 'package:flutter/material.dart';
import 'package:pulso_mty/screens/home_screen.dart';
import 'package:pulso_mty/screens/main_screen.dart';
import 'package:pulso_mty/theme/app_theme.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: "Pulso Monterrey",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );

  }

}

