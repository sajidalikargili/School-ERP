 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';

Widget ProfileContainer(){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 115,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
       border: Border.all(color: AppColors.bgColor,width: 2)
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 12,bottom: 12,right: 12),
            child: Container(
              height: 95,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16)
              ),
            ),
          ),
             Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Akshay Syal',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w700,fontSize:25 )),
                      SizedBox(height: 10),
                      IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Class XI-B',style: TextStyle(color: Colors.grey),),
                              const VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                                width: 10,
                              ),
                              const Text('Roll no: 04',style: TextStyle(color: AppColors.greyColor)),

                            ],
                          ),

                      ),
                    ],
                  ),
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IconButton(onPressed: (){
            }, icon: Icon(Icons.camera_alt_outlined)),
          )

        ],
      ),
    ),
  );
}