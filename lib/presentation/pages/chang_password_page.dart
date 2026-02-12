import 'package:flutter/material.dart';
import 'package:school_erp/presentation/pages/ask_doubt.dart';
import 'package:school_erp/utils/app_colors.dart';

class ChangPasswordPage extends StatefulWidget {
  const ChangPasswordPage({super.key});

  @override
  State<ChangPasswordPage> createState() => _ChangPasswordState();
}

class _ChangPasswordState extends State<ChangPasswordPage> {
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
                          AskDoubtForm(position: 'Old Password',department: '--'),
                          SizedBox(height: 8),
                          AskDoubtForm(position: 'New Password',department: '--'),
                          SizedBox(height: 8),
                          AskDoubtForm(position: 'Retype Password',department: '--'),
                          SizedBox(height: 30),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: AppColors.bgColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text('CHANG PASSWORD',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20),),
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
