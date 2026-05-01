import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 160, 181, 203), // Azul MTY
    scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Fondo gris claro

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0066CC),
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      elevation: 0, // Sin sombra
    ), 

    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // Bordes redondeados
      ),
    ),
    
    // Fuente general
    fontFamily: 'Roboto',
  );
}