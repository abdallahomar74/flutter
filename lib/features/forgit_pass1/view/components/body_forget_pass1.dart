import 'package:flutter/material.dart';
import 'package:section_project/core/custom_textfield.dart';
import 'package:section_project/features/forget_pass2/view/page/forget_pass2_page.dart';

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
           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const forget_pass2_page(),));  
          },
            color: Colors.greenAccent ,
            minWidth: 130,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: const Text('confirm',style: TextStyle(color: Colors.white),),
          ),
      ],
    );
  }
}