import 'package:flutter/material.dart';
import 'package:school_erp/presentation/widgets/Item_container.dart';
import 'package:school_erp/presentation/widgets/attendance_cart.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_styles.dart';
import 'package:school_erp/utils/app_helper_method.dart';
class DasboardPage extends StatefulWidget {
  const DasboardPage({super.key});

  @override
  State<DasboardPage> createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body:SafeArea(child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 30),
                  Text('Hi Akshay',style: AppTextStyles.textStyle24,),
                  SizedBox(height: 15),
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Class XI-B',style: TextStyle(color: AppColors.greyColor),),
                          const VerticalDivider(
                            color: Colors.grey,
                            thickness: 1,
                            width: 10,
                          ),
                          const Text('Roll no: 04',style: TextStyle(color: AppColors.greyColor)),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text('2020-2022'),
                    ),
                  )
                ],
              ),

              Expanded(child: Padding(
                padding: const EdgeInsets.only(right: 20,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 33,
                        backgroundColor: AppColors.greyColor,
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
         SizedBox(height: 100),
          Expanded(
              child:Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 130),
                      child: Column(
                        children: [
                     Expanded(child:Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                         child:GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 10,childAspectRatio: 0.99),
                             itemCount: HelperMethod.getItemList().length,
                             itemBuilder: (context,index){
                           final item=HelperMethod.getItemList()[index];
                           return ItemContainer(item.icon, item.name, AppColors.bgColor);
                             }
                         ),
                       ),)
                        ],
                      ),
                    ),
                  )),
                  Positioned(
                    top: -90, // half of card height
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        AttendanceCart(Icons.person, '68:90%', 'Attendance',AppColors.brownColor),
                        SizedBox(width: 30),
                        AttendanceCart(Icons.lock, 'R90:90', 'Fees Due',AppColors.purpleColor),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
