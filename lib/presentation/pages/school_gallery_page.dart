import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:school_erp/utils/app_colors.dart';

class SchoolGalleryPage extends StatefulWidget {
  const SchoolGalleryPage({super.key});

  @override
  State<SchoolGalleryPage> createState() => _SchoolGalleryPageState();
}

class _SchoolGalleryPageState extends State<SchoolGalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,),
        ),
        title: Text('School Gallery',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w300,color: Colors.white,fontSize: 18),),
      ),
      body: Column(
        children: [
          SizedBox(height: 60),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: (index % 2 == 0) ? 180 : 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),

      // body:  Stack(
      //   children: [
      //     Positioned.fill(
      //         top: 60,
      //         left: 0,
      //         right: 0,
      //         child: Container(
      //           decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
      //           ),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.only(top: 40,left: 30,right: 30),
      //                 child: Column(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      //                       child: MasonryGridView.count(
      //                         crossAxisCount: 2,
      //                         mainAxisSpacing: 12,
      //                         crossAxisSpacing: 12,
      //                         itemCount: 10,
      //                         itemBuilder: (context, index) {
      //                           return Container(
      //                             height: (index % 2 == 0) ? 180 : 120,
      //                             decoration: BoxDecoration(
      //                               color: Colors.grey.shade400,
      //                               borderRadius: BorderRadius.circular(15),
      //                             ),
      //                           );
      //                         },
      //                       ),
      //                     ),
      //
      //                   ],
      //                 ),
      //               ),
      //
      //             ],
      //           ),
      //         ))
      //   ],
      // ),
    );
  }
}
