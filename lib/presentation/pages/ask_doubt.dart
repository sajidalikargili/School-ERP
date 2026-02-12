import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';

class AskDoubt extends StatefulWidget {
  const AskDoubt({super.key});

  @override
  State<AskDoubt> createState() => _AskDoubtState();
}

class _AskDoubtState extends State<AskDoubt> {
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
        title: Text('Ask Doubt',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,color: Colors.white,fontSize: 18),),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 40,left: 30,right: 30),
                       child: Column(
                         children: [
                           AskDoubtForm(position: 'Select Techer',department: 'Alex Clerk',icon:Icons.keyboard_arrow_down_sharp),
                           SizedBox(height: 8),
                           AskDoubtForm(position: 'Select Subject',department: 'Math',icon:Icons.keyboard_arrow_down_sharp),
                           SizedBox(height: 8),
                           AskDoubtForm(position: 'Title',department: 'Factoring sum or difference of two cubes'),
                           SizedBox(height: 8),
                           AskDoubtForm(position: 'Doubt Description',department: '--'),
                           SizedBox(height: 30),
                           Container(
                             height: 60,
                             decoration: BoxDecoration(
                                 color: AppColors.bgColor,
                                 borderRadius: BorderRadius.circular(10)
                             ),
                             child: Center(
                               child: Text('SEND',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20),),
                             ),
                           ),
                         ],
                       ),
                     ),
                    Expanded(child: Column(children: [],)),
                    BottomImage()
                  ],
                ),
          ))
        ],
      ),
    );
  }
}

class BottomImage extends StatelessWidget {
  const BottomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
        left: 0,
        right: 0,
        child:Image.asset(AppAssets.desgin_bg, fit: BoxFit.cover, width: double.infinity) );
  }
}

class AskDoubtForm extends StatelessWidget {
  final String position;
  final String  department;
  final     IconData? icon;
   AskDoubtForm({
    super.key,
     required this.position,
     required this.department,
     this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(position,style: TextStyle(color: Colors.grey),),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(department,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400),),
            Icon(icon,size: 33,color: Colors.grey,)
          ],
        ),
        SizedBox(height: 15),
        Container(height: 1,color: Colors.grey,width: double.infinity)
      ],
    );
  }
}
