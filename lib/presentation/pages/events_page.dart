import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_helper_method.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,),
        ),
        title: Text('Events Programs',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,color: Colors.white,fontSize: 18),),
      ),
      body: Stack(
        children: [
          Positioned.fill(
              top: 60,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18,left: 12,right: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Expanded(child:ListView.builder(itemBuilder: (context,index){
                        final item=HelperMethod.geteventLists()[index];
                        return  eventItems(title:item.title ,time:item.Date ,description: item.description);
                      },itemCount: HelperMethod.geteventLists().length)),

                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class eventItems extends StatelessWidget {
  final String title;
  final String time;
  final String description;
  const eventItems({
    super.key,
    required this.title,
    required this.time,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey,width: 1),
        borderRadius: BorderRadius.circular(20)
      ),
      child:    Padding(
        padding: const EdgeInsets.only(top: 10,left: 15,bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontWeight: FontWeight.w900),),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.watch_later_outlined,size: 21,color: AppColors.bgColor),
                          SizedBox(width: 4),
                          Text(time,style: TextStyle(color: AppColors.bgColor,fontWeight: FontWeight.w600)),
                         // Text(time,style: TextStyle(color: AppColors.bgColor,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Text(description, style: TextStyle(
                          height: 1.6, fontSize: 13,color: Colors.grey,fontFamily: 'Poppins'  // 👈 line spacing
                      ),)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
