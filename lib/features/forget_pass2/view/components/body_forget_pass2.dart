import 'package:flutter/material.dart';
import 'package:section_project/core/custom_textfield.dart';
import 'package:section_project/core/extention_responsive&theme.dart';

import 'package:section_project/features/verification/view/page/verification_page.dart';

// ignore: camel_case_types
class body_forget_pass2 extends StatelessWidget {
  const body_forget_pass2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: custom_textfield(labelText:'new password',
            hintText:'enter new password',
            obscuer: true,
            icon: const Icon(Icons.lock),
            controller: TextEditingController(),
            format: const [],
            )
          ),

        Container(
          margin: const EdgeInsets.all(20),
          child: custom_textfield(
            labelText:'new password',
            hintText:'confirm new password',
            obscuer: true,
            icon: const Icon(Icons.lock),
            controller: TextEditingController(),
            format: const [],
            )
          ),

         MaterialButton(onPressed: (){
           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const verification_page(),)); 
          },
            color: context.button_color ,
            minWidth: 130,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child:  Text('confirm',style: context.Text1,),
          ),  
      ],

    );
  }
}