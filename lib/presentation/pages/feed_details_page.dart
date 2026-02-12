import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:school_erp/utils/app_colors.dart';

class FeedDetailsPage extends StatefulWidget {
  const FeedDetailsPage({super.key});

  @override
  State<FeedDetailsPage> createState() => _FeedDetailsPageState();
}

class _FeedDetailsPageState extends State<FeedDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.greyColor,
      appBar: AppBar(
        backgroundColor: AppColors.greyColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),
        ),
      ),
      body:Stack(
        children: [
          Positioned.fill(
            top: 290,
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.watch_later_outlined,size: 21,color: AppColors.bgColor),
                      SizedBox(width: 4),
                      Text('12 Jan 21, ',style: TextStyle(color: AppColors.bgColor,fontWeight: FontWeight.w600)),
                      Text('09:00 Am',style: TextStyle(color: AppColors.bgColor,fontWeight: FontWeight.w600),),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Rhyme Time : A Night of Poetry',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 19),),
                  SizedBox(height: 15),
                  Text("Lorem Ipsum is simply dummy text of the printing and \n typesetting  industryIt has been the industrys standard dummy text ever since the 1500sIt is used to demonstrate the visual form of a document without meaningful contentThis text helps designers focus on layout and design before final content is added focus on layout and design before final content is added focus on layout and design before final content is added focus on layout and design before final content is added", style: TextStyle(
                    height: 1.6, fontSize: 13,color: Colors.grey,fontFamily: 'Poppins'  // 👈 line spacing
                  ),)

                ],
              ),
            ),
          ))
        ],
      ) ,
    );
  }
}
