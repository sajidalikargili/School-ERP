import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  AppTheme._();
  static ThemeData lightTheme= ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.openSansTextTheme(
      const  TextTheme(
        bodySmall: TextStyle(fontSize: 12,fontWeight:  FontWeight.w400),
        bodyMedium: TextStyle(fontSize: 14,fontWeight:FontWeight.w400),
        bodyLarge: TextStyle(fontSize:16,fontWeight: FontWeight.w600),
        labelLarge: TextStyle(fontSize: 16,fontWeight:FontWeight.w600 ),
        titleMedium: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
        titleLarge: TextStyle(fontSize: 22,fontWeight: FontWeight.w700)
      )
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    )
  );
  static ThemeData darkTheme=ThemeData(
     brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme:GoogleFonts.openSansTextTheme(
      const TextTheme(
          bodySmall: TextStyle(fontSize: 12,fontWeight:  FontWeight.w400),
          bodyMedium: TextStyle(fontSize: 14,fontWeight:FontWeight.w400),
          bodyLarge: TextStyle(fontSize:16,fontWeight: FontWeight.w600),
          labelLarge: TextStyle(fontSize: 16,fontWeight:FontWeight.w600 ),
          titleMedium: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
          titleLarge: TextStyle(fontSize: 22,fontWeight: FontWeight.w700)
      )
    ),
      appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  )
  );

}