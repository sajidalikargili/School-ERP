import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_erp/presentation/widgets/pay_online_form.dart';
import 'package:school_erp/utils/app_colors.dart';
class OnlinePayPage extends StatefulWidget {
  const OnlinePayPage({super.key});

  @override
  State<OnlinePayPage> createState() => _OnlinePayPageState();
}

class _OnlinePayPageState extends State<OnlinePayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        leading:Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: IconButton(onPressed: (){
          context.pop();
        }, icon: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,)),),
        title: Text('Play Online',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,fontSize: 20,fontStyle: FontStyle.italic,color: Colors.white),),
        backgroundColor: AppColors.bgColor,
      ),
      body:Stack(
        children: [
          Positioned.fill(
            top: 30,
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                PayOnlineForm('01 Feb 2026','26 Feb 2026','999')
              ],
            ),
          )),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(16)
                            ),
                  child: Row(
                    children: [
                     Expanded(child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('PAY NOW',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),

                       ],
                     )),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                      )
                    ],
                  ),
                          ),
              ))
        ],
      )
    );
  }
}
