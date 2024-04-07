import 'package:flutter/material.dart';
import 'package:section_project/core/validation.dart';

// ignore: camel_case_types
class body_verification extends StatelessWidget {
  const body_verification({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('verify your email',style: TextStyle(
          fontSize: 20,
          color: Colors.blue
        ),),

        const SizedBox(height: 50,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(4, (index) => Container(
                 width: 50,
                 margin: const EdgeInsets.only(right: 10),
                 child: TextFormField(
                 decoration: const InputDecoration(
                 enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                 color: Colors.blue
                 )
                 ),

                 errorBorder:  OutlineInputBorder(
                 borderSide: BorderSide(
                 color: Colors.red
                 )
                 ), 
                 ),
                validator: validation().validat1,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller:TextEditingController() ,
                maxLength: 1,
                ),
                )  )
          ],
        ),
        
        const SizedBox(height: 40,),

        MaterialButton(onPressed: (){

        },
          color: Colors.blue ,
          minWidth: 100,
          height: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          child: const Text('done',style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}