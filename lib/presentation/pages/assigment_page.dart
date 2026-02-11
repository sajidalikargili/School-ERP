import 'package:flutter/material.dart';
import 'package:school_erp/data/weekmodel.dart';
import 'package:school_erp/presentation/widgets/week_container.dart';
import 'package:school_erp/presentation/widgets/week_item.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_helper_method.dart';
class AssigmentPage extends StatefulWidget {
  const AssigmentPage({super.key});

  @override
  State<AssigmentPage> createState() => _AssigmentPageState();
}

class _AssigmentPageState extends State<AssigmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: IconButton(onPressed: (){
          
        }, icon:Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,)),
        title: Text('TimeTable',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,fontSize: 20,fontStyle: FontStyle.italic,color: Colors.white),),
      ),
      body: Stack(
        children: [
          Positioned.fill(
              top: 30,
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35))
            ),
                child: Column(
                  children: [
                    WeekContainer(),
                   Expanded(child: ListView.builder(itemCount: HelperMethod.getTimeTable().length,itemBuilder: (context,index){
                     final item=HelperMethod.getTimeTable()[index];
                     return  item.time=="12:00pm-1:00pm"  ?LunchBreakContainer(subJect:'Lunch Break' ,date: '1:00pm-2:00pm',period: 'Period 2') : TimeTableContainter(subJect: item.subject,date:item.time,teacher: item.techer ?? '',period: item.period);
                   })),

                  ],
                ),
          ))
        ],
      ),
    );
  }
}

class TimeTableContainter extends StatelessWidget {
  final String subJect;
  final String date;
  final String teacher;
  final period;
  const TimeTableContainter({
    super.key,
    required this.subJect,
    required this.date,
    required this.teacher,
    required this.period
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: Colors.grey,width: 2)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subJect,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(date),
            ),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(teacher),
                  Text(period,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class LunchBreakContainer extends StatelessWidget {
  final String subJect;
  final String date;
  final period;
  const LunchBreakContainer({
    super.key,
    required this.subJect,
    required this.date,
    required this.period
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.grey,width: 2)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Break Lunch',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('12:00pm-1:00pm'),
              ),
            ],
          )),
            Image.asset(AppAssets.lunch_break)

          ],
        ),
      ),
    );
  }
}




