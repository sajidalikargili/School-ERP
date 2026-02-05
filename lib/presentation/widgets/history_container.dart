 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';

Widget HistoryContainer(
 String specialDay,
 String Date_one,
 String day ){
  return Container(
    margin: EdgeInsets.all(5),
    height: 90,
 decoration: BoxDecoration(
 color: Colors.white,
 borderRadius: BorderRadius.circular(15),
     border: Border.all(color:Colors.grey,width: 1)
 ),
    child:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(specialDay,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Date_one),
              SizedBox(height: 40),
              Text(day)
            ],
          )

        ],
      ),
    ),
 );
 }