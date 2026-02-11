import 'package:flutter/material.dart';
import 'package:school_erp/presentation/widgets/week_item.dart';
import 'package:school_erp/utils/app_helper_method.dart';

class WeekContainer extends StatefulWidget {
  const WeekContainer({
    super.key,
  });

  @override
  State<WeekContainer> createState() => _WeekContainerState();
}

class _WeekContainerState extends State<WeekContainer> {
  String isSelectedDay='MON';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top: 30,left: 8,right: 8),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey,width: 2)
      ),
      child: Row(
        children: [
          Expanded(child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: HelperMethod.getWeekList().length,
              itemBuilder: (context,index){
                final item=HelperMethod.getWeekList()[index];
                return weekItem(item: item,isSelction: isSelectedDay==item.day ,ontap: (){
                  setState(() {
                    isSelectedDay=item.day;
                  });
                });
              }))

        ],
      ),
    );
  }
}