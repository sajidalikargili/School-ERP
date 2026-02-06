import 'package:flutter/material.dart';

class QuestionOption extends StatelessWidget {
  String title;
  IconData? icon;
  Color? color;
    QuestionOption({
    super.key,
    required this.title,
      this.color,
      this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: color==0 ? Border.all(width: 2,color:  Colors.grey) : Border.all(width: 2,color:  color ?? Colors.grey)

      ),
        child: Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(title,style: TextStyle(color: color ?? Colors.grey,fontWeight: FontWeight.w700),),
            )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border:color==null ? Border.all(color: Colors.grey,width: 2) :null
                  ),
                  child: icon!=null ?Icon(
                    Icons.check_circle,
                    color:  color ?? Colors.grey,
                    size: 40,  // Same as container size to fill completely
                  ):null
              ),
            ),
          ],
        ),
      ),
    );
  }
}