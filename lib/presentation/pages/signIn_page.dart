import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:school_erp/presentation/provider/theme_provider.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_router.dart';
import 'package:school_erp/utils/app_styles.dart';

class SigninPages extends StatefulWidget {


   SigninPages({super.key});

  @override
  State<SigninPages> createState() => _SigninPagesState();
}

class _SigninPagesState extends State<SigninPages> {
  bool isPasswordVisible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [

          // 🔹 Top Illustration
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              AppAssets.splashLogo,
              height: 295,
            ),
          ),

          const SizedBox(height: 10),
           Align(
             alignment: Alignment.centerLeft,
             child: Padding(
               padding: const EdgeInsets.only(left: 30),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     'Hi Student',
                     style: AppTextStyles.textStyle24Bold
                         .copyWith(color: Colors.white),
                   ),
                   const SizedBox(height: 4),
                   Text(
                     'Sign in to Continue',
                     style: AppTextStyles.sectionTile
                         .copyWith(color: Colors.white54),
                   )
                 ],
               ),
             ),
           ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ],
            ),


          const SizedBox(height: 18),

          // 🔹 WHITE BG + FORM
          Expanded(
            child: Stack(
              children: [

                // ✅ FULL WIDTH WHITE BG IMAGE
                Positioned.fill(
                  child: Image.asset(
                    AppAssets.white_bg,
                    fit: BoxFit.cover,
                  ),
                ),

                // 🔹 FORM CONTENT ON TOP
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Email
                      Text(
                        'Mobile Number/Email',
                        style: AppTextStyles.sectionTile.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 6),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: 'example@gmail.com',
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Password
                      Text(
                        'Password',
                        style: AppTextStyles.sectionTile.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 6),
                      TextField(
                        obscureText:
                        !isPasswordVisible,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed:(){
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          }, icon:  Icon(isPasswordVisible ?Icons.visibility :Icons.visibility_off)),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.bgColor
                          ),
                          onPressed: () {
                            context.goNamed(AppRoute.playquizePage.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Text('SIGN IN',style: AppTextStyles.button),
                                ],
                              )),
                              // Padding(
                              //   padding: const EdgeInsets.symmetric(horizontal: 100),
                              //   child: Text('SIGN IN',style: AppTextStyles.button),
                              // ),
                              Icon(Icons.arrow_forward,color: Colors.white,size: 25)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password?'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
