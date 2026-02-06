import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:go_router/go_router.dart';
import 'package:school_erp/presentation/widgets/clock_container.dart';
import 'package:school_erp/utils/app_helper_method.dart';
import 'package:school_erp/presentation/widgets/person_container.dart';
import 'package:school_erp/presentation/widgets/question_headers.dart';
import 'package:school_erp/presentation/widgets/question_option.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_helper_method.dart';

class PlayQuizePage extends StatefulWidget {
  const PlayQuizePage({super.key});

  @override
  State<PlayQuizePage> createState() => _PlayQuizePageState();
}

class _PlayQuizePageState extends State<PlayQuizePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
     appBar: AppBar(
       leading:Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: IconButton(onPressed: (){
         context.pop();
       }, icon: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,)),),
       title: Text('App Quize',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,fontSize: 20,fontStyle: FontStyle.italic,color: Colors.white),),
       actions: [
        Padding(padding: EdgeInsets.all(15),
            child:  Text('Skip',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),)
       ],
       backgroundColor: AppColors.bgColor,
     ),
      body: Column(
        children: [
          ClockContainer('18 Sec',AppColors.tealgreenColor),
       SizedBox(height: 5),
          QuestionHeader(),
          SizedBox(height: 30),
          Dash(
            direction: Axis.horizontal,
            length: 380,
            dashLength: 5,
            dashColor: Colors.white,
          ),
          SizedBox(height: 10),
          Stack(
            clipBehavior: Clip.none,
            children: [

              // 🔵 Bottom overlapping layer (shadow design)
              Positioned(
                bottom: -10,
                left: 20,
                right: 20,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color:AppColors.waterishColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned(
                bottom: -23,
                left: 35,
                right: 35,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color:AppColors.waterishColor.withOpacity(0.30),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              _QuestionCard()

              // ⚪ Main white card
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 16),
              //   padding: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(25),
              //   ),
              //   child: Column(
              //     children: [
              //
              //     ],
              //   ),
              // ),
            ],
          )

          //    Stack(
       //      clipBehavior: Clip.none,
       //      children: [
       //        // 🔵 Background
       //        Container(
       //          height: 650,
       //          width: 500,
       //          color: Colors.blue, // your background color
       //        ),
       //
       //
       //        // ⚪ Overlapping white card
       //        Positioned(
       //          top: 10, // this controls overlap
       //          left: 15,
       //          right: 15,
       //          child: _QuestionCard(),
       //        ),
       //      ],
       //    )

          // Expanded(child:Padding(padding: EdgeInsets.symmetric(vertical: 35,horizontal: 15),child:  Container(
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(20)
          //   ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.symmetric(vertical: 45, horizontal: 30),
          //       child: Align(
          //           alignment: Alignment.centerLeft,  // Changed from Alignment.center
          //           child: Text(
          //             'In 2017, which player became the leading run scorer of all time in women ODI cricket?',
          //             style: TextStyle(
          //                 fontFamily: 'Poppins',
          //                 fontWeight: FontWeight.w700,
          //                 fontSize: 18
          //             ),
          //           )
          //       ),
          //     ),
          //     Expanded(
          //         child: ListView.builder(
          //             itemCount: HelperMethod.getQuestionList().length,  // Get the list length
          //             itemBuilder: (context, index) {
          //               final question = HelperMethod.getQuestionList()[index];  // Get item at index
          //               return QuestionOption(
          //                 title: question.title,
          //                 icon: question.icon,
          //                 color: question.color,
          //               );
          //             }
          //         )
          //     )
          //
          //   ],
          // ),),
          //   ),),





        ],
      ),
    );
  }
}
class _QuestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'In 2017, which player became the leading run scorer of all time in women ODI cricket?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: HelperMethod.getQuestionList().length,
                itemBuilder: (context, index) {
                  final question = HelperMethod.getQuestionList()[index];
                  return QuestionOption(
                    title: question.title,
                    icon: question.icon,
                    color: question.color,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}





