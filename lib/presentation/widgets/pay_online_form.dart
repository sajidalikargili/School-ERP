import 'package:flutter/cupertino.dart';
import 'package:http/io_client.dart';
import 'package:flutter/material.dart';

Widget PayOnlineForm( String date,String periodDate,String totalFees){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Text('Date'),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(date,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
          Icon(Icons.calendar_month)
        ],
      ),
        SizedBox(height: 10),
        Container(
          height: 1,color: Colors.grey,
          width: double.infinity,
        ),
        SizedBox(height: 30),
        Text('Period'),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(periodDate,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
            Icon(Icons.calendar_month)
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 1,color: Colors.grey,
          width: double.infinity,
        ),
        SizedBox(height: 30),
        Text('Total fees'),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(totalFees,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
            Icon(Icons.calendar_month)
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 1,color: Colors.grey,
          width: double.infinity,
        )
      ],
    ),
  );
}