import 'package:flutter/material.dart';
import 'package:section_project/core/custom_textfield.dart';



// ignore: camel_case_types
class body_login extends StatelessWidget {
  const body_login({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 200,),
          Container(
            margin: const EdgeInsets.all(15),
            child: custom_textfield(
              labelText: 'email',
               hintText: 'enter your email',
               icon: const Icon(Icons.mail),
               controller: TextEditingController(),
               format: const [],
            )
          ),
    
          
          Container(
            margin: const EdgeInsets.all(15),
            child: custom_textfield(
              labelText: 'password',
               hintText: 'enter your password',
               obscuer: true,
               icon: const Icon(Icons.lock),
               controller: TextEditingController(),
               format: const [],
               ),
          ),
    
    
          MaterialButton(onPressed: (){
            
          },
            color: Colors.greenAccent ,
            minWidth: 130,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: const Text('login',style: TextStyle(color: Colors.white),),
          ),
          Row(
            children: [
              const SizedBox(width: 13,),
              TextButton(onPressed: (){
               Navigator.pushNamed(context, 'dashboard');
                
              }, child: const Text('forget password?',style: TextStyle(
                color: Colors.blue,
                fontSize: 17,
              ),
              ))
            ],
          )
         
        ],  
      ),
    );
  }
}