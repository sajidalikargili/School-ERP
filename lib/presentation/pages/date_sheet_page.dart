import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';

class DateSheetPage extends StatefulWidget {
  const DateSheetPage({super.key});

  @override
  State<DateSheetPage> createState() => _DateSheetPageState();
}

class _DateSheetPageState extends State<DateSheetPage> {
  final List<Map<String,String>> scheduleList=[
    {"date": "11", "month": "JAN", "subject": "Science", "day": "Monday"},
    {"date": "13", "month": "JAN", "subject": "English", "day": "Wednesday"},
    {"date": "15", "month": "JAN", "subject": "Hindi", "day": "Friday"},
    {"date": "18", "month": "JAN", "subject": "Math", "day": "Monday"},
    {"date": "20", "month": "JAN", "subject": "Social Study", "day": "Wednesday"},
    {"date": "22", "month": "JAN", "subject": "Drawing", "day": "Friday"},
    {"date": "25", "month": "JAN", "subject": "Computer", "day": "Monday"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: IconButton(onPressed: (){
          
        }, icon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),
        )),
        title: Text('DateSheet',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,fontSize:20,color: Colors.white),),
      ),
      body: Stack(
        children: [

          DateSheetContainer(scheduleList: scheduleList)
        ],
      ),
    );
  }
}

class DateSheetContainer extends StatelessWidget {
  final List<Map<String,String>> scheduleList;
  const DateSheetContainer({
    super.key,
    required this.scheduleList
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 30,
        left: 0,
        right: 0,
        child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
      ),
          child: Column(
            children: [
             SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 60,right: 50),
                child: Divider(height: 1.5),
              ),
             ScheduleList(scheduleList: scheduleList),
              // Padding(
              //   padding: const EdgeInsets.only(left: 60, right: 40),
              //   child: Divider(
              //     height: 0,
              //     thickness: 1,
              //   ),
              // ),

              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(AppAssets.desgin_bg,fit: BoxFit.contain))

            ],
          ),
    ),);
  }
}

class ScheduleList extends StatelessWidget {
  const ScheduleList({
    super.key,
    required this.scheduleList,
  });

  final List<Map<String, String>> scheduleList;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.only(left: 10,right: 40),
      child: ListView.separated(itemBuilder: (context,index){
        final item=scheduleList[index];
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    item["date"]!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item["month"]!,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight:FontWeight.w600
                    ),
                  ),
                  const SizedBox(width: 20),

                ],
              ),
              const SizedBox(width: 20),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item["subject"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item["day"]!,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Icon(Icons.access_time, size: 16, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      "09:00 AM",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }, separatorBuilder: (context,index)=>Padding(
        padding: const EdgeInsets.only(left: 00,right: 00),
        child: Divider(height: 2,
indent: 50,endIndent: 10,),
      ), itemCount:scheduleList.length),
    ));
  }
}

class DateSheetItem extends StatelessWidget {
  const DateSheetItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 5),
            child: Container(height: 1,
              color: Colors.grey,
              width: double.infinity,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('11',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 16),),
                    Text('JAN',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14),)
                  ],
                ),

                SizedBox(width: 30),

                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text('English',style: TextStyle(fontFamily: 'Poppins',fontSize: 12,fontWeight: FontWeight.w600),),
                            SizedBox(height: 6),
                            Text('Monday',style: TextStyle(fontSize: 10),)
                          ],
                        ),
                       SizedBox(width: 180),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_clock,size: 15),
                            SizedBox(width: 5),
                            Text('09:00 Am',style: TextStyle(fontSize: 10),)
                          ],
                        )
                      ],
                    ),


                  ],
                )),
              ],
            ),
          ),
        ],
      )
    );
  }
}
