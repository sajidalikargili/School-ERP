import 'package:flutter/material.dart';
import 'package:school_erp/presentation/widgets/form_one.dart';
import 'package:school_erp/presentation/widgets/profile_container.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        leading: IconButton(onPressed: (){

        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
        backgroundColor: AppColors.bgColor,

        title: Text('My Profile',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w100,color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ElevatedButton.icon(onPressed: (){

            }, label: Text('Done',style: TextStyle(fontWeight: FontWeight.w900,color: AppColors.bgColor),),icon: Icon(Icons.done,color: AppColors.bgColor,size: 20),),
          )
        ],

      ),
        body: Stack(
          children: [
            Positioned.fill(
                top: 30,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                  ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          ProfileContainer(),
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(16.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                              Expanded(child:  FormOne(title: 'Adhone No',date: '2020 t0 2025')),
                               SizedBox(width: 10),
                               Expanded(child:  FormOne(title: 'Adhone No',date: '2020 t0 2025'))
                             ],
                           ),
                         ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child:  FormOne(title: 'Adhone No',date: '2020 t0 2025',icon:Icons.lock)),
                                SizedBox(width: 10),
                                Expanded(child:  FormOne(title: 'Adhone No',date: '2020 t0 2025',icon:Icons.lock,))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FormOne(title: 'Parent Mail Id', date: 'parentboth34@gmail.com',icon:Icons.lock),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FormOne(title: 'Mother Name', date: 'Monica Leson',icon:Icons.lock),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FormOne(title: 'Father Name', date: 'Bernard Tayard',icon:Icons.lock),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: FormOne(title: 'Permanent Address', date: 'Karoli Bahgi Dehli',icon:Icons.lock),
                          ),
                      
                        ],
                      ),
                    ),
                  ),
                ),
          ],
        )
    );
  }
}
