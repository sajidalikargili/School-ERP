import 'package:flutter/material.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
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
        title: Text('Support',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,color: Colors.white,fontSize: 18),),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 12),
                   Image.asset(AppAssets.ic_support,height: 300,width: 200),
                    Text('Get Support',style: TextStyle(fontSize: 25),),
                    SizedBox(height: 30),
                    Text('Lorem Ipsum is simply dummy text  \n of the printing and  then on layout  \n and design before greate',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 80),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Call us -',style: TextStyle(fontSize: 16),),
                        SizedBox(width: 3),
                        Text('+927838xxxxxx',style: TextStyle(fontSize: 16),),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Mail us -',style: TextStyle(fontSize: 16),),
                        SizedBox(width: 3),
                        Text('mfaizan145@gmail.com',style: TextStyle(fontSize: 16),),
                      ],
                    ),



                  ],
                ),
              ))
        ],
      ),
    );
  }
}
