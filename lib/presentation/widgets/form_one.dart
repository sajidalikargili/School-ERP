import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_styles.dart';

class FormOne extends StatelessWidget {
 final String title;
 final String date;
 final IconData? icon;
  FormOne({super.key,required this.title,required this.date,this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title,style: AppTextStyles.sectionTile.copyWith(color: Colors.grey),),
        SizedBox(height: 10),
       Row(children: [
        Expanded(child:  Text(date,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500),),),
         Icon(icon,color: Colors.grey)
         
       ],),
        SizedBox(height: 20),
        Container(height: 1.5,width: double.infinity,color: Colors.grey,)

      ],
    );
  }
}
