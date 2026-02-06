import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';

Widget ClockContainer(String second,Color color){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
    height: 45,
    width: double.infinity,
    decoration: BoxDecoration(
      color:AppColors.deepBlue,
      borderRadius: BorderRadius.circular(50)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 60,
        width: 230,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
             child: Text(second,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white)),
           )
          ],
        ),
      ),
    ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Icon(Icons.watch_later_outlined,size: 33,color: Colors.white,),
       )


      ],
    ),
  );
}