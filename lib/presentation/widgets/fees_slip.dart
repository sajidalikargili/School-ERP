import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';

Widget FeesSlip(String receipt_No,String month,String payment_Date,String total_amount,VoidCallback ontap){
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      border: Border.all(color: Colors.grey,width: 1)
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Reciept No'),
              Text(receipt_No,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(height: 1,color: Colors.grey,width:double.infinity,),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Month'),
              Text(month,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Payment Date'),
              Text(payment_Date,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(height: 1,color: Colors.grey,width:double.infinity,),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Payment'),
              Text(total_amount,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

            ],
          ),
        ),
        GestureDetector(
          onTap: ontap,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(10))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Pay Now',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward,color: Colors.white,)
              ],
            ),
          ),
        )

      ],
    ),
  );
}