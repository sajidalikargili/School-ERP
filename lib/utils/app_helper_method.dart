import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/data/assigment_model.dart';
import 'package:school_erp/data/history_model.dart';
import 'package:school_erp/data/item_model.dart';
import 'package:school_erp/data/question_model.dart';
import 'package:school_erp/data/time_table_model.dart';
import 'package:school_erp/data/weekmodel.dart';
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
  static List<WeekModel> getWeekList(){
   return [
     WeekModel(day: 'MON'),
     WeekModel(day: 'TUS'),
     WeekModel(day: 'WED'),
     WeekModel(day: 'THU'),
     WeekModel(day: 'FRI'),
     WeekModel(day: 'STA'),
   ];
  }
  static List<TimeTAbleModel> getTimeTable(){
   return [
     TimeTAbleModel(subject: 'Urdr', time: '8:00am-9:00am', techer: 'Jone Mark', period: 'Period 1'),
     TimeTAbleModel(subject: 'English', time: '9:00am-10:00am', techer: 'Kervin Dase', period: 'Period 2'),
     TimeTAbleModel(subject: 'Mathematic', time: '10:00am-11:00am', techer: 'Alist Caruzes', period: 'Period 3'),
     TimeTAbleModel(subject: 'Chemistry', time: '11:00pm-12:00pm', techer: 'Frank Fort', period: 'Period 4'),
     TimeTAbleModel(subject: 'Lunch Break', time: '12:00pm-1:00pm'),
     TimeTAbleModel(subject: 'Biology', time: '1:00pm-2:00pm', techer: 'Zarberk jeams', period: 'Period 5'),
     TimeTAbleModel(subject: 'Physics', time: '2:00pm-3:00pm', techer: 'Zarberk jeams', period: 'Period 5')
   ];
  }
  static List<AssignmentModel> getAssigmentList(){
   return [
     AssignmentModel(title: 'Surface Area and  Volume', subject: 'Mathematics', assigmentDate: '10 Nove 20', submitionDate:'10 Dece 20'),
     AssignmentModel(title: 'Surface of Atom', subject: 'Science', assigmentDate: '10 Oct 20', submitionDate:'30 Oct 20'),
     AssignmentModel(title: 'My bestfrined Essay', subject: 'English', assigmentDate: '10 Sep 20', submitionDate:'30 Sep 20')
   ];
  }
}
