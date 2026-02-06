import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';

Widget PersonContainter(){
  return Container(
    margin: EdgeInsets.only(right: 15),
    height: 45,
    width: 120,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.20),
      borderRadius: BorderRadius.circular(25)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.person_add_sharp,color: Colors.white,size: 30),
        SizedBox(width: 10),
        Text('256',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),)
      ],
    ),
  );
}