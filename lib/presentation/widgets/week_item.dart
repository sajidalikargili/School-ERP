import 'package:flutter/material.dart';
import 'package:school_erp/data/weekmodel.dart';
import 'package:school_erp/utils/app_colors.dart';

class weekItem extends StatefulWidget {

  const weekItem({
    super.key,
    required this.item,
    required this.ontap,
    required this.isSelction
  });

  final WeekModel item;
  final VoidCallback ontap;
  final bool isSelction;

  @override
  State<weekItem> createState() => _weekItemState();
}

class _weekItemState extends State<weekItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        width: 65,
        decoration: BoxDecoration(
            color: widget.isSelction? AppColors.bgColor:null,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(widget.item.day,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: widget.isSelction ?Colors.white :Colors.black),),
        ),
      ),
    );
  }
}