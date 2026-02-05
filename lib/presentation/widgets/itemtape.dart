import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';
Widget ItemTape(String title ,int index,bool isSelected,VoidCallback ontap){
  return GestureDetector(
    onTap:ontap ,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white :Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
          child: Center(
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: isSelected ? AppColors.bgColor :Colors.white))
    ),
    ),
  );
}