import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/presentation/widgets/person_container.dart';

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: RichText(
              text: TextSpan(
                  text: 'Question 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SegoeUI',
                      fontSize: 30,
                      fontWeight: FontWeight.w400
                  ),
                  children:[
                    TextSpan(
                        text: '  '

                    ),
                    TextSpan(
                        text: '/10',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )
                    )
                  ]
              )),
        ),
        PersonContainter()
      ],
    );
  }
}