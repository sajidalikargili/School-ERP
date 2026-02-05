import 'package:flutter/material.dart';
import 'package:school_erp/presentation/pages/attendance_page.dart';
import 'package:school_erp/presentation/widgets/history_container.dart';
import 'package:school_erp/presentation/widgets/itemtape.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_helper_method.dart';

class HolidayPage extends StatefulWidget {
  const HolidayPage({super.key});

  @override
  State<HolidayPage> createState() => _HolidayPageState();
}

class _HolidayPageState extends State<HolidayPage> {
  int isSelected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: Container(
          height: 36,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ItemTape('ATTENDANCE',0, isSelected==0,(){
                setState(() {
                  isSelected=0;
                });
              }),
              ItemTape('HOLIDAY', 1,isSelected==1,(){
                setState(() {
                  isSelected=1;
                });
              })
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Positioned.fill(
            top: 30,
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios,size: 22),
                        Text(
                          "NOVEMBER 2020",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios,size: 22),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: ["Mo","Tu","We","Th","Fr","Sa","Su"]
                          .map((d) => Text(d, style: TextStyle(fontWeight: FontWeight.w600)))
                          .toList(),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: 31,
                    itemBuilder: (context, index) {
                      int day = index + 1;

                      Color? color;
                     // if (day == 8 || day == 23) color = Colors.red;
                      if (day == 14 || day==15 || day ==16 ) color = Colors.green;
                      if ([4, 11, 18, 25].contains(day)) color = Colors.blue.shade200;

                      return calendarDay(
                        day: day.toString(),
                        bgColor: color,
                      );
                    },
                  ),
                  Text('List of Holiday',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 17),),
                  // Expanded(child:
                  // ListView.builder(
                  //     itemCount: HelperMethod.getHistList().length,
                  //     itemBuilder:
                  //         (context,index){
                  //       final item=HelperMethod.getHistList()[index];
                  //       return HistoryContainer(item.specialDay,item.date,item.date);
                  //     })),
                  // Positioned(
                  //     bottom: 0,
                  //     right: 0,
                  //     left: 0,
                  //     child: Image.asset(AppAssets.desgin_bg)
                  // )
                  Expanded(
                    child: ListView.builder(
                      itemCount: HelperMethod.getHistList().length + 1,
                      itemBuilder: (context, index) {
                        if (index == HelperMethod.getHistList().length) {
                          // LAST ITEM → image
                          return Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Image.asset(AppAssets.desgin_bg),
                          );
                        }

                        final item = HelperMethod.getHistList()[index];
                        return HistoryContainer(
                          item.specialDay,
                          item.date,
                          item.date,
                        );
                      },
                    ),
                  ),


                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
