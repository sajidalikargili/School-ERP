import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_styles.dart';

Widget ItemContainer(
    String icon,
    String title,
    Color color,
    ) {
  return SizedBox(
    height: 200,
    width: 170,
    child: Card(
      elevation: 8,
      shadowColor: Colors.black.withOpacity(0.25),
      color: AppColors.greyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(icon,height: 50,width: 50,color: color),
            const SizedBox(height: 10),
            Text(title, style: AppTextStyles.titleTextSytel.copyWith(color: Colors.black)),
          ],
        ),
      ),
    ),
  );
}
