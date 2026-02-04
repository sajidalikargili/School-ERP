import 'package:flutter/material.dart';
import 'package:school_erp/presentation/pages/attendance_page.dart';
import 'package:school_erp/presentation/pages/dasboard_page.dart';
import 'package:school_erp/presentation/pages/fees_page.dart';
import 'package:school_erp/presentation/pages/holiday_page.dart';
import 'package:school_erp/presentation/pages/profile_page.dart';
import 'package:school_erp/utils/app_colors.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  final List<Widget> pages = const [
    DasboardPage(),
    AttendancePage(),
    HolidayPage(),
    FeesPage(),
    ProfilePage(),

  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: changePage,
        selectedItemColor: AppColors.bgColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle), label: 'Attendance'),
          BottomNavigationBarItem(
              icon: Icon(Icons.event), label: 'Holidays'),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: 'Fees'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
    );
  }
}






