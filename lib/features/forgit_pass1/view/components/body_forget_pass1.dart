import 'package:flutter/material.dart';
import 'package:section_project/core/custom_textfield.dart';
import 'package:section_project/core/extention_responsive&theme.dart';



// ignore: camel_case_types
class body_forget_pass1 extends StatelessWidget {
  const body_forget_pass1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: custom_textfield(
            labelText: 'mail',
            hintText: 'enter your email',
            icon: const Icon(Icons.mail),
            controller: TextEditingController(),
            format: const [],
            )
          ),
         
         MaterialButton(onPressed: (){
           Navigator.pushNamed(context, 'forgetpass2');
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