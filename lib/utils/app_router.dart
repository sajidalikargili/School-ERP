import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:school_erp/presentation/pages/dasboard_page.dart';
import 'package:school_erp/presentation/pages/home_page.dart';
import 'package:school_erp/presentation/pages/practise_page.dart';
import 'package:school_erp/presentation/pages/signIn_page.dart';
import 'package:school_erp/presentation/pages/splash_page.dart';

class AppNavigator{
  AppNavigator._();
 //  static final _rootNavigator=GlobalKey<NavigatorState>();
 // static GlobalKey<NavigatorState> get rootNavigator=> _rootNavigator;
  static final router=GoRouter(
    initialLocation: AppRoute.splashPage.path,
    //  navigatorKey: rootNavigator,
      routes:[
        GoRoute(path: AppRoute.signInPage.path,name: AppRoute.signInPage.name,builder: (context,state)=>SigninPages()),
        GoRoute(path: AppRoute.splashPage.path,name: AppRoute.splashPage.name,builder: (context,state)=>SplashPages()),
        GoRoute(path: AppRoute.homePage.path,name: AppRoute.homePage.name,builder: (context,state)=>HomePage()),
        GoRoute(path: AppRoute.dashboardPage.path,name: AppRoute.dashboardPage.name,builder: (context,state)=>DasboardPage()),
        GoRoute(path: AppRoute.practisePage.path,name: AppRoute.practisePage.name,builder: (context,state)=>PractisePage())

      ]);

}
extension PathName on AppRoute{
  String get path => switch(this){
    AppRoute.splashPage=>'/',
    AppRoute.signInPage=>'/signIn',
    AppRoute.homePage=>'/home',
    AppRoute.dashboardPage=>'/dashboard',
    AppRoute.practisePage=>'/practise',

  };
  // String get name => switch(this){
  //   AppRoute.splashPage=>'splash',
  //   AppRoute.signInPage=>'signIn',
  //   AppRoute.dashboardPage=>'dashboard',
  //   AppRoute.homePage=>'home',
  //   AppRoute.practisePage=>'practise'
  // };
}
enum AppRoute{
  splashPage,
  signInPage,
  homePage,
  dashboardPage,
  practisePage
}