import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_erp/presentation/widgets/fees_slip.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_router.dart';
import 'package:school_erp/utils/app_styles.dart';
class FeesPage extends StatefulWidget {
  const FeesPage({super.key});

  @override
  State<FeesPage> createState() => _FeesPageState();
}

class _FeesPageState extends State<FeesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.bgColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Icon(Icons.arrow_back_ios,size: 27,color: Colors.white,),
      ),
      title: Text('Fees Due',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,fontStyle: FontStyle.italic,fontSize: 20,color: Colors.white),),),
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Positioned.fill(
            top: 30,
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                  
            ),
            child: Column(
              children: [
               Expanded(child: ListView.builder(
                 itemCount: 3,
                   itemBuilder:(context,index){
                 return  FeesSlip('#0990','October','10-20-2026','9999',(){
                   context.goNamed(AppRoute.onlinepayPage.name);
                 });

               }))
              ],
            ),
          )),
         
        ],
      ),
    );
  }
}
