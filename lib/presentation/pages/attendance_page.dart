import 'package:flutter/material.dart';
import 'package:school_erp/presentation/widgets/itemtape.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';

class AttendancePage extends StatefulWidget {

  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  int isSelected =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30),
        ),
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
      body:Stack(
        children: [
          Positioned.fill(
              top: 30,
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
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
                  )
                  ,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: ["Mo","Tu","We","Th","Fr","Sa","Su"]
                          .map((d) => Text(d, style: TextStyle(fontWeight: FontWeight.w600)))
                          .toList(),
                    ),
                  )
                  ,
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      int day = index + 1;

                      Color? color;
                      if (day == 8 || day == 23) color = Colors.red;
                      if (day == 20) color = Colors.green;
                      if ([4, 11, 18, 25].contains(day)) color = Colors.blue.shade200;

                      return calendarDay(
                        day: day.toString(),
                        bgColor: color,
                      );
                    },
                  )
                  ,
                    legendItem(color: Colors.red, text: "Absent", count: "02"),
                    legendItem(color: Colors.green, text: "Festival & Holidays", count: "01"),
                    Spacer(),
                    Positioned(
                      bottom: 0,
                        right: 0,
                        left: 0,
                        child: Image.asset(AppAssets.desgin_bg))
                  ],
                                ),
                ),
            ),
               )
        ],
      ) ,
    );
  }
}
Widget calendarDay({
  required String day,
  Color? bgColor,
}) {
  return Center(
    child: Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        day,
        style: TextStyle(
          color: bgColor == null ? Colors.black : Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
Widget legendItem({
  required Color color,
  required String text,
  required String count,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: color),
    ),
    child: Row(
      children: [
        Container(width: 19, height: 60,decoration: BoxDecoration( borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),color: color)),
        SizedBox(width: 12),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text(text),
            ],
          ),
        )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: color==Colors.red ? AppColors.circleredBg : AppColors.circlegreenBg,
            child: Center(child: Text(count, style: TextStyle(color: color==Colors.red ? Colors.red :Colors.green))),
          ),
        )
      ],
    ),
  );
}

