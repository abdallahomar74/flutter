import 'package:flutter/material.dart';
import 'package:section_project/core/custom_textfield.dart';

// ignore: camel_case_types
class body_registration extends StatelessWidget {
  const body_registration({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         custom_textfield(
            labelText: 'first name',
            hintText: 'Enter your firstname',
            icon: const Icon(Icons.perm_identity),
          ),
         const SizedBox(height: 20,),
         custom_textfield(
            labelText: 'last name',
            hintText: 'Enter your lastname',
            icon: const Icon(Icons.perm_identity),
          ),
         const SizedBox(height: 20,),
         custom_textfield(
            labelText: 'email',
            hintText: 'Enter your email',
            icon: const Icon(Icons.mail),
           ),
         const SizedBox(height: 20,),
         custom_textfield(
            labelText: 'password',
            hintText: 'Enter your password',
            obscuer: true,
            icon: const Icon(Icons.lock),
            ),
            const SizedBox(height: 20,),

            MaterialButton(onPressed: (){
            
          },
            color: Colors.greenAccent ,
            minWidth: 130,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: const Text('creat account',style: TextStyle(color: Colors.white),),
          ),
            
        ],
      ),
    );
  }
}