import 'package:flutter/material.dart';
import 'package:school_erp/presentation/pages/time_table_page.dart' show AssigmentContainer;
import 'package:school_erp/utils/app_assets.dart';
import 'package:school_erp/utils/app_colors.dart';
import 'package:school_erp/utils/app_helper_method.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<String> subjectList=['English','Urdu','Science','Math','Social Study','Drawing','Computer Scrience'];
  List<String> percentageList=['100','100','100','100','100','100','100'];
  List<String> gradeList=['74  -  B','87  - B','74  -  B','87  -  B','89  -  B','78  -  B','98  -  B'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(backgroundColor: AppColors.bgColor,elevation: 0,leading: IconButton(onPressed: (){
      //
      // }, icon: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //   child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 35),
      // )),actions: [
      //   IconButton(onPressed: (){
      //
      //   }, icon: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 10),
      //     child: Icon(Icons.share_outlined,color: Colors.white,size: 35),
      //   ))
      // ],),
      body: Stack(
        clipBehavior: Clip.none,
    children: [
      Positioned.fill(
        top: -560,
      left: 0,
      right: 0,
      child: Image.asset(
        AppAssets.bg_grade,
        fit: BoxFit.contain,
      )),
         _Appbar(),
        _ResultCard(),
      _BottomContent(subjectList,percentageList,gradeList),
    ],
    ),
    );
  }
}
Widget _Appbar() {
  return Positioned(
      top:15,
      left: 0,
      right: 0,
      child: SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.arrow_back_ios, color: Colors.white,size: 30,),
          Icon(Icons.share, color: Colors.white,size: 30,),
        ],
      ),
    ),
  )
  );
}

Widget _ResultCard() {
  return Positioned(
    top: 120,
    left: 70,
    right: 0,
    child:  Container(
    height: 160,
    width: 160,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 60,
          offset: Offset(0, 3),
        )
      ],
    ),
    child: ClipOval(
      child: Image.asset(
        AppAssets.img_grade_pertange,
        fit: BoxFit.contain,
      ),
    ),
  ),
  );
}
Widget _BottomContent(List<String> subjectList,List<String> percentageList,List<String> gradeList) {
  return Positioned(
    top: 310,
    left: 0,
    right: 0,
    bottom: 0,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "You are Excellent,",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              "AKSHAY SYAL !!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            SubjectContainer(subjectList: subjectList,percenatageList: percentageList,gradeList: gradeList),
            const SizedBox(height: 15),
            DownLoadButton(),
            Positioned(
              bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(AppAssets.desgin_bg,fit: BoxFit.contain))

          ],
        ),
      ),
    ),
  );
}

class DownLoadButton extends StatelessWidget {
  const DownLoadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 240,
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Download PDF',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.white),),
          SizedBox(width: 10),
          Icon(Icons.download,color: Colors.white,)
        ],
      ),
    );
  }
}

class SubjectContainer extends StatelessWidget {
  final List<String> subjectList;
  final List<String> percenatageList;
  final List<String> gradeList;
  SubjectContainer({
    super.key,
    required this.subjectList,
    required this.percenatageList,
    required this.gradeList
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
       border: Border.all(color: Colors.grey,width: 1.2),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Expanded(child:  Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              Expanded(child: ListView.builder(
                itemCount:subjectList.length,  padding: EdgeInsets.zero,
                  itemBuilder: (context,index){
                  final item=subjectList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(item),
                );
              }))
             ],
           ),
         )),
          Container(
            width: 110,
            decoration: BoxDecoration(
                color: AppColors.aliceblueIsh,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
            ),

            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: percenatageList.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(percenatageList[index],style: TextStyle( fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,),),
                  ),
                );
              },
            ),
          ),

          Container(
            height: double.infinity,
            width: 110,
            decoration: BoxDecoration(
                color: AppColors.pastelGreen,
              borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))
            ),
            child:ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: gradeList.length,
              itemBuilder: (context,index){
                return SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(gradeList[index],style: TextStyle(    fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18),),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}


