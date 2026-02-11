import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_helper_method.dart';

class TimeTablePage extends StatefulWidget {
  const TimeTablePage({super.key});

  @override
  State<TimeTablePage> createState() => _TimeTablePageState();
}

class _TimeTablePageState extends State<TimeTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.bgColor,leading: IconButton(onPressed: (){
        
      }, 
        icon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.arrow_back_ios,color:Colors.white,size: 35),
        )),title:Text('Assigment',style: TextStyle(fontFamily: 'Poppin',fontSize: 20,fontWeight: FontWeight.w300,fontStyle: FontStyle.italic,color: Colors.white),) ,),
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Positioned.fill(
            top: 30,
              left: 0,
              right: 0,
              child:Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context,index){
                      final item=HelperMethod.getAssigmentList()[index];
                      return   AssigmentContainer(subject: item.subject,title: item.title,assigmentDate: item.assigmentDate,submissionDate: item.submitionDate);
                    },itemCount: HelperMethod.getAssigmentList().length,),
                  )
                  ],
                ),
              ) )
        ],
      )
    );
  }
}

class AssigmentContainer extends StatelessWidget {
  final String subject;
  final String title;
  final String assigmentDate;
  final String submissionDate;
  const AssigmentContainer({
    super.key,
    required this.subject,
    required this.title,
    required this.assigmentDate,
    required this.submissionDate
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Container(
        height: 230 ,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey,width: 2)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 25,
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(subject,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,color: AppColors.bgColor)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(title,style: TextStyle(fontFamily: 'Poppins',fontSize: 15,fontWeight: FontWeight.w600)),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Assigment Date'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Last Submission Date'),
                        ),

                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(assigmentDate,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(submissionDate,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 14)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //
            //     children: [
            //       Text('Assigment Date'),
            //       Text(assigmentDate,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 15))
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text('Last Submission Date'),
            //       Text(submissionDate,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 15))
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text('TO BE SUBMITTED',style: TextStyle(fontFamily: 'Poppin',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
