import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTextStyles{
  AppTextStyles._();
  static TextStyle _base({ required double fontSize,required FontWeight fontWeight,Color color=Colors.white}){
    return GoogleFonts.openSans(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color
    );
  }
 static final textStyle24=_base(fontSize: 24, fontWeight: FontWeight.w400);
 static final titleTextSytel=_base(fontSize: 14, fontWeight: FontWeight.w600);
 static final textStyle24SemiBold=_base(fontSize: 24, fontWeight: FontWeight.w400);
 static final textStyle24Bold=_base(fontSize: 24, fontWeight: FontWeight.w700);
 static final caption=_base(fontSize: 12, fontWeight: FontWeight.w400);
 static final body=_base(fontSize: 14, fontWeight: FontWeight.w400);
 static final button=_base(fontSize: 16, fontWeight:FontWeight.w600);
 static final sectionTile=_base(fontSize: 14, fontWeight:FontWeight.w400,color: Colors.white);
 static final pageTitle=_base(fontSize: 22, fontWeight: FontWeight.w700);
 static final textStyle60Bold=_base(fontSize: 25, fontWeight: FontWeight.w700);
}
final textSytle12=GoogleFonts.openSans(
textStyle: TextStyle(
fontSize: 12,
fontWeight: FontWeight.w400,
),
);
final textStyle12SemiBold=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600
  )
);
final textStyle12Bold=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700
  )
);
final textStyle14=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400
  )
);
final textSytle14SemiBold=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600
  )
);
final textStyle14Bold=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700
  )
);
final textStyle16=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400
  )
);
final textStyle16SemiBold=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600
  )
);
final textSytel16Bold=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700
  )
);
final textStyle18=GoogleFonts.openSans(
  textStyle: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400
  )
);
final textStyle18SemiBold=GoogleFonts.openSans(
  fontSize: 18,
  fontWeight: FontWeight.w600
);
final textSyle18Bold=GoogleFonts.openSans(
  fontSize: 18,
  fontWeight: FontWeight.w700
);