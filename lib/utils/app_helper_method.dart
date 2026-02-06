import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/data/history_model.dart';
import 'package:school_erp/data/item_model.dart';
import 'package:school_erp/data/question_model.dart';
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_constants.dart';

class HelperMethod{
 static   List<ItemModel> getItemList(){
    return [
      ItemModel(icon:AppAssets.play_Quize, name: 'Play Quize'),
      ItemModel(icon:AppAssets.Assigment , name: 'Assigment'),
      ItemModel(icon:AppAssets.school_Holiday , name: 'School Holiday'),
      ItemModel(icon:AppAssets.time_Table , name: 'Time Table'),
      ItemModel(icon:AppAssets.Result, name: 'Result'),
      ItemModel(icon:AppAssets.date_Sheet, name: 'Date Sheet'),
      ItemModel(icon:AppAssets.ask_Doubts, name: 'Ask Doubts'),
      ItemModel(icon:AppAssets.school_Gallery, name: 'School Gallery'),
      ItemModel(icon:AppAssets.leave_Application, name: 'Leave Application'),
      ItemModel(icon:AppAssets.change_Password, name: 'Change Password'),
      ItemModel(icon: AppAssets.Events, name: 'Events'),
      ItemModel(icon:AppAssets.Logout, name: 'Logout'),
    ];
  }
  static List<HistoryModel> getHistList(){
   return [
     HistoryModel(
       specialDay: 'Women Day',
       date: '20-4-3020',
       day: 'Monday',
     ),
     HistoryModel(
       specialDay: 'Kashmir Day',
       date: '20-4-1956',
       day: 'Friday',
     ),
     HistoryModel(
       specialDay: 'Independence Day',
       date: '14-8-1947',
       day: 'Thursday',
     ),

   ];
  }
  static List<QuestionModel> getQuestionList(){
   return [
     QuestionModel(title: 'A.Stefai Taylor'),
     QuestionModel(title: 'B.Methali Raj', icon:   Icons.check_circle, color: Colors.green),
     QuestionModel(title: 'C.Suzeai Bashes', icon:   Icons.check_circle, color: Colors.red),
     QuestionModel(title: 'D.Harmanpreet Kaure'),
   ];
  }
}
