import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_erp/presentation/pages/practise_page.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_router.dart';
class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goNext();
  }
  void goNext(){
    Future.delayed(Duration(seconds: 3),(){
     context.goNamed(AppRoute.signInPage.name);
      //context.goNamed(AppRoute.signInPage.name);
     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PractisePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:AppColors.bgColor,
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            SizedBox(height: 160),
          Align(
            alignment: Alignment.center,
            child:  Image.asset(AppAssets.schoolName,width: MediaQuery.of(context).size.width,height: 100,)),
           Expanded(child:Column(

           )),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Align(
                alignment: Alignment.center,
                child:  Image.asset(AppAssets.splashLogo,width: MediaQuery.of(context).size.width,fit: BoxFit.fill)),
            ),
          Image.asset(AppAssets.blueBubble)

        ],
      ),
    );
  }
}
