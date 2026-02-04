import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_styles.dart';
Widget AttendanceCart( IconData icon,String percentage,String attendance,Color color){

  return Material(
    elevation: 15, // 🔥 elevation
    shadowColor: Colors.black.withOpacity(0.25),
    borderRadius: BorderRadius.circular(15),
    color: Colors.white,
    child: Container(
      height: 210,
      width:170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor:AppColors.greyColor,
                  child: Icon(icon,size: 40,color: color),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(percentage,style: AppTextStyles.textStyle24Bold.copyWith(color: Colors.black),),
            SizedBox(height: 10),
            Text(attendance,style: AppTextStyles.sectionTile.copyWith(color: Colors.black),)
          ],
        ),
      ),
    ),
  );
}