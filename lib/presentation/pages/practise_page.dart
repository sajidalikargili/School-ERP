import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_router.dart';

class PractisePage extends StatelessWidget {
  const PractisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B7FD6), // blue background
      body: Stack(
        children: [
          // 🔹 Top Illustration
          Positioned(
            top: 10,
            right: 0,
            left: 100,

            child: Image.asset(
            AppAssets.splashLogo, // your image
              height: 280,
            ),
          ),

          // 🔹 Main Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 140),

              // Text Section
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Student',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // 🔹 White Card
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Email
                      const Text(
                        'Mobile Number/Email',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'example@gmail.com',
                          border: UnderlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Password
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          border: UnderlineInputBorder(),
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.bgColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            context.pushNamed(AppRoute.dashboardPage.path);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // Forgot Password
                     Align(
                       alignment:Alignment.centerRight,
                       child: TextButton(
                         onPressed: () {

                         },
                         child: const Text(
                           'Forgot Password?',
                           style: TextStyle(color: Colors.grey),
                         ),
                       ),
                     )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
